# 1. VAT, names and phone(s) numbers of clients that had appointemnt with 'Jane Sweettooth. Ordered by names.
SELECT c.VAT as client_vat, c.name as client_name, GROUP_CONCAT(DISTINCT p_c.phone) as client_phone_numbers
FROM client c
         join appointment a on c.VAT = a.VAT_client
         join doctor d on a.VAT_doctor = d.VAT
         join employee e on d.VAT = e.VAT,
     phone_number_client p_c
where e.name
    like 'Jane Sweettoth'
  and a.date_timestamp <= NOW()
  and c.VAT = p_c.VAT
GROUP BY c.VAT, c.name
ORDER BY c.name;

# check date_timestamp <= NOW() - we check only appointments which already happened ('had')
# to display phone numbers in easy to interpret way and dont multiply records we use func GROUP_CONCAT

# 2. List the names of trainees doctors with reports graded below three or 'insufficient' in the description.
# To display: Traine name, VAT trainee, supervisor name, evaluation score, sorted by score DESC
SELECT DISTINCT e.name         as traine_name,
                e.VAT          as traine_VAT,
                e_d.name       as doctor_name,
                sr.evaluation,
                sr.description as evaluation_description
FROM employee e
         join trainee_doctor td on e.VAT = td.VAT
         join supervision_report sr on td.VAT = sr.VAT
         join employee e_d on e_d.VAT = td.VAT_supervisor
WHERE sr.evaluation < 3
   or sr.description like '%insufficient%'
ORDER BY sr.evaluation DESC;

# there might be reports with score higher than 3 but with word insufficient

# 3 Name, city and VAT of all clients, where last recent consultation SOAP objective mentions 'gingivitis' or 'periodontitis'
SELECT DISTINCT c.name as client_name, c.city as client_city, c.VAT as client_VAT
FROM client c
         join appointment a on c.VAT = a.VAT_client
         join consultation con on a.VAT_doctor = con.VAT_doctor
    and a.date_timestamp = con.date_timestamp
         JOIN (
    SELECT cl.VAT as client_vat, MAX(con.date_timestamp) as recent_consultation
    FROM consultation con
             join appointment ap on con.VAT_doctor = ap.VAT_doctor
        and con.date_timestamp = ap.date_timestamp
             join client cl on ap.VAT_client = cl.VAT
    GROUP BY cl.VAT) as r_c on c.VAT = r_c.client_vat
    and con.date_timestamp = r_c.recent_consultation
WHERE con.SOAP_O like '%gingivitis%'
   or con.SOAP_O like '%periodontitis%';

# we join consultation with additional created table where we get dates of recent consultation for each client who had some consultation
# we need to check only RECENT consultation if soap.o has aforementioned words


# query to perform test/validation
#select cl.VAT, con.VAT_doctor,  MAX(con.date_timestamp), con.SOAP_O from consultation con join appointment ap on con.VAT_doctor = ap.VAT_doctor and con.date_timestamp = ap.date_timestamp join client cl on ap.VAT_client = cl.VAT group by cl.VAT;

# 4. Name, VAT, address(street, city, zip) of client that had appointments but never had consultation
SELECT DISTINCT c.name as client_name, c.VAT as VAT_client, c.street, c.city, c.zip
from client c
         join appointment a on c.VAT = a.VAT_client
where a.date_timestamp < NOW()
  and (a.VAT_doctor, a.date_timestamp) not in (select con.VAT_doctor, con.date_timestamp from consultation con);

# we get the clients who had appointments and than check if the appointments they had exists in consultation

# 5. For each diagnosis: code and description, list the number of distinct medication names that have been prescribed to treat that condition.
# sort by number of distinct medications names, ASC
SELECT d_c.ID                 as diagnosis_id,
       d_c.description        as diagnosis_description,
       COUNT(DISTINCT p.name) as number_medicaments_prescribed
from diagnostic_code d_c
         join consultation_diagnostic cd on d_c.ID = cd.ID
         join prescription p on cd.VAT_doctor = p.VAT_doctor and cd.date_timestamp = p.date_timestamp and cd.ID = p.ID
group by d_c.ID, d_c.description
order by COUNT(DISTINCT p.name) ASC;

# 6. Avg number of nurser, procedures, diagnostic codes, and prescriptions involved in consultation from year 2019.
# show results respectively for clients above and below 18 years old.
SELECT DISTINCT 'Equal or Above 18'       as patients_age,
                AVG(ca1.count_nurse)      as avg_num_nurses,
                AVG(pic1.count_procedure) as avg_num_procedures,
                AVG(cd1.count_diagnosis)  as avg_num_diagnosis
from (SELECT ca.date_timestamp, ca.VAT_doctor, COUNT(ca.VAT_nurse) as count_nurse
      from consultation_assistant ca
               join appointment a on ca.date_timestamp = a.date_timestamp
               join client c on a.VAT_client = c.VAT
      where ca.date_timestamp >= DATE('2019-01-01')
        and (YEAR(CURDATE()) - YEAR(c.birth_date)) >= 18
      group by ca.date_timestamp, ca.VAT_doctor) as ca1,
     (SELECT pic.date_timestamp, pic.VAT_doctor, COUNT(pic.name) as count_procedure
      from procedure_in_consultation pic
               join appointment a on pic.date_timestamp = a.date_timestamp
               join client c on a.VAT_client = c.VAT
      where pic.date_timestamp >= DATE('2019-01-01')
        and (YEAR(CURDATE()) - YEAR(c.birth_date)) >= 18
      group by pic.date_timestamp, pic.VAT_doctor) as pic1,
     (SELECT cd.date_timestamp, cd.VAT_doctor, COUNT(cd.ID) as count_diagnosis
      from consultation_diagnostic cd
               join appointment a on cd.date_timestamp = a.date_timestamp
               join client c on a.VAT_client = c.VAT
      where cd.date_timestamp >= DATE('2019-01-01')
        and (YEAR(CURDATE()) - YEAR(c.birth_date)) >= 18
      group by cd.date_timestamp, cd.VAT_doctor) as cd1
UNION
SELECT 'Below 18' as Patient_age, AVG(ca2.count_nurse), AVG(pic2.count_procedure), AVG(cd2.count_diagnosis)
from (SELECT ca.date_timestamp, ca.VAT_doctor, COUNT(ca.VAT_nurse) as count_nurse
      from consultation_assistant ca
               join appointment a on ca.date_timestamp = a.date_timestamp
               join client c on a.VAT_client = c.VAT
      where ca.date_timestamp >= DATE('2019-01-01')
        and (YEAR(CURDATE()) - YEAR(c.birth_date)) < 18
      group by ca.date_timestamp, ca.VAT_doctor) as ca2,
     (SELECT pic.date_timestamp, pic.VAT_doctor, COUNT(pic.name) as count_procedure
      from procedure_in_consultation pic
               join appointment a on pic.date_timestamp = a.date_timestamp
               join client c on a.VAT_client = c.VAT
      where pic.date_timestamp >= DATE('2019-01-01')
        and (YEAR(CURDATE()) - YEAR(c.birth_date)) < 18
      group by pic.date_timestamp, pic.VAT_doctor) as pic2,
     (SELECT cd.date_timestamp, cd.VAT_doctor, COUNT(cd.ID) as count_diagnosis
      from consultation_diagnostic cd
               join appointment a on cd.date_timestamp = a.date_timestamp
               join client c on a.VAT_client = c.VAT
      where cd.date_timestamp >= DATE('2019-01-01')
        and (YEAR(CURDATE()) - YEAR(c.birth_date)) < 18
      group by cd.date_timestamp, cd.VAT_doctor) as cd2
;
# Note: we dont have age data yet(triggers will fill the attribute), so we calculate age here within query.
# Note2: we gat the averege count for each information needed and for each age group.

# 7. For each diagnostic code, present the name of the most common medication used to treat that condition
SELECT dc.ID as diagnostic_code, pre.name as most_freq_medicaments
FROM diagnostic_code dc
         join prescription pre on pre.ID = dc.ID
GROUP BY dc.ID, pre.name
HAVING COUNT(pre.name) >= ALL (SELECT COUNT(pre1.name)
                               FROM diagnostic_code dc1
                                        JOIN prescription pre1 on pre1.ID = dc1.ID
                               WHERE dc1.ID = dc.ID
                               GROUP BY dc1.ID, pre1.name);
# with HAVING statement we chose medication with highest quantity
# if different medicaments were used same number of times we display both of them

# 8. list alphabetically the names and the labs of medications that in 2019 been used to treat 'dental cavities' but not been used to treat any
# 'infectious disease'.
SELECT med.name, med.lab
from medication med
where (med.name, med.lab) in
      (SELECT med.name, med.lab
       from medication med
                join prescription p on med.name = p.name and med.lab = p.lab
                join consultation_diagnostic cd
                     on p.VAT_doctor = cd.VAT_doctor and p.date_timestamp = cd.date_timestamp and p.ID = cd.ID
                join diagnostic_code dc on cd.ID = dc.ID
       where YEAR(cd.date_timestamp) = 2019
         and dc.description like 'dental cavities')
  and (med.name, med.lab) not in
      (SELECT med.name, med.lab
       from medication med
                join prescription p on med.name = p.name and med.lab = p.lab
                join consultation_diagnostic cd
                     on p.VAT_doctor = cd.VAT_doctor and p.date_timestamp = cd.date_timestamp and p.ID = cd.ID
                join diagnostic_code dc on cd.ID = dc.ID
       where YEAR(cd.date_timestamp) = 2019
         and dc.description like 'infectious disease')
order by med.name, med.lab;
# Note: first we get the medications which were used in 2019 to cure dental cativities, than we check if those were not used to cure 'infectious disease' in 2019

# 9. list of names and addresses of clients who have never missed an appointemnt in 2019
SELECT DISTINCT c.name as client_name, c.city, c.street, c.zip
from client c
         join appointment a on c.VAT = a.VAT_client
         join consultation c1 on a.VAT_doctor = c1.VAT_doctor and a.date_timestamp = c1.date_timestamp
where a.VAT_client not in (select distinct ap.VAT_client
                           from appointment ap
                                    left outer join consultation con on ap.VAT_doctor = con.VAT_doctor and
                                                                        ap.date_timestamp = con.date_timestamp
                           where con.VAT_doctor IS NULL
                             and YEAR(ap.date_timestamp) = 2019)
  and YEAR(a.date_timestamp) = 2019;

# use left outer join appointmerts and consultation, find appointments which have NULL value in consultation attribute


