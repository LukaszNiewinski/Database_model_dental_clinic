# 1. VAT, names and phone(s) numbers of clients that had appointemnt with 'Jane Sweettooth. Ordered by names.
SELECT c.VAT, c.name, GROUP_CONCAT(DISTINCT p_c.phone) as phone_numbers from client c join appointment a on c.VAT = a.VAT_client join doctor d on a.VAT_doctor = d.VAT
    join employee e on d.VAT = e.VAT, phone_number_client p_c where e.name like 'Jane Sweettoth' and a.date_timestamp <= CURRENT_TIME and c.VAT = p_c.VAT group by c.VAT, c.name ORDER BY c.name;

# 2. List the names of trainees doctors with reports graded below three or 'insufficient' in the description.
# To display: Traine name, VAT trainee, supervisor name, evaluation score, sorted by score DESC
SELECT DISTINCT e.name as traine_name, e.VAT, e_d.name as doctor_name, sr.evaluation, sr.description from employee e join trainee_doctor td on e.VAT = td.VAT
    join supervision_report sr on td.VAT = sr.VAT join employee e_d on e_d.VAT = td.VAT_supervisor where sr.evaluation <= 3 or sr.description like '%insufficient%' order by sr.evaluation;

# 3 Name, city and VAT of all clients, where last recent consultation SOAP objective mentions 'gingivitis' or 'periodontitis'
# NOT WORKING PROPERLY YET, BELOW SOME QUERIES AND ATTEMPTS
SELECT DISTINCT c.name, c.city, c.VAT, c2.date_timestamp from client c join appointment a on c.VAT = a.VAT_client
    join consultation c2 on a.VAT_doctor = c2.VAT_doctor and a.date_timestamp = c2.date_timestamp
    where c2.SOAP_O like '%gingivitis%' or c2.SOAP_O like '%periodontitis%' and (c2.VAT_doctor, c2.date_timestamp) in (select con.VAT_doctor, MAX(con.date_timestamp) from consultation con  join appointment ap on con.VAT_doctor = ap.VAT_doctor and con.date_timestamp = ap.date_timestamp join client cl on ap.VAT_client = cl.VAT group by cl.VAT);


select cl.VAT ,con.VAT_doctor,  MAX(con.date_timestamp) from consultation con  join appointment ap on con.VAT_doctor = ap.VAT_doctor and con.date_timestamp = ap.date_timestamp join client cl on ap.VAT_client = cl.VAT group by cl.VAT;

#2011 patient vat
select cl.VAT ,con.VAT_doctor,  con.date_timestamp from consultation con  join appointment ap on con.VAT_doctor = ap.VAT_doctor and con.date_timestamp = ap.date_timestamp join client cl on ap.VAT_client = cl.VAT where cl.VAT = '200011';

SELECT * from consultation join appointment a on consultation.VAT_doctor = a.VAT_doctor and consultation.date_timestamp = a.date_timestamp
join consultation c2 on a.VAT_doctor = c2.VAT_doctor and a.date_timestamp = c2.date_timestamp
    where c2.SOAP_O like '%gingivitis%' or c2.SOAP_O like '%periodontitis%' and (c2.VAT_doctor, c2.date_timestamp) in (select ap.VAT_doctor, MAX(ap.date_timestamp) OVER (PARTITION BY ap.VAT_client) from appointment ap);

## last attemtp
SELECT DISTINCT c.name, c.city, c.VAT, c2.date_timestamp from client c join appointment a on c.VAT = a.VAT_client
    join consultation c2 on a.VAT_doctor = c2.VAT_doctor and a.date_timestamp = c2.date_timestamp
    where c2.SOAP_O like '%gingivitis%' or c2.SOAP_O like '%periodontitis%' and c2.date_timestamp = (SELECT  MAX(con.date_timestamp) from consultation con join appointment ap on con.VAT_doctor = ap.VAT_doctor and con.date_timestamp = ap.date_timestamp where ap.VAT_client = a.VAT_client) ;

SELECT  MAX(con.date_timestamp) from consultation con join appointment ap on con.VAT_doctor = ap.VAT_doctor and con.date_timestamp = ap.date_timestamp where ap.VAT_client = '200011';

SELECT DISTINCT c.name, c.city, c.VAT, c2.date_timestamp from client c join appointment a on c.VAT = a.VAT_client
    join consultation c2 on a.VAT_doctor = c2.VAT_doctor and a.date_timestamp = c2.date_timestamp
    where c2.SOAP_O like '%gingivitis%' or c2.SOAP_O like '%periodontitis%' and c2.date_timestamp >=all (select con.date_timestamp from consultation con  join appointment ap on con.VAT_doctor = ap.VAT_doctor and con.date_timestamp = ap.date_timestamp join client cl on ap.VAT_client = cl.VAT where ap.VAT_client = a.VAT_client);

WITH recent_consultation(VAT_client, date_stamp) AS
    (SELECT  cl.VAT, MAX(con.date_timestamp) from consultation con  join appointment ap on con.VAT_doctor = ap.VAT_doctor and con.date_timestamp = ap.date_timestamp join client cl on ap.VAT_client = cl.VAT group by cl.VAT)

SELECT c.name, c.city, c.VAT, c2.date_timestamp from client c join appointment a on c.VAT = a.VAT_client
    join consultation c2 on a.VAT_doctor = c2.VAT_doctor and a.date_timestamp = c2.date_timestamp join recent_consultation r_c on c.VAT = r_c.VAT_client
    where c2.SOAP_O like '%gingivitis%' or c2.SOAP_O like '%periodontitis%' and c2.date_timestamp = r_c.date_stamp;

SELECT DISTINCT c.name, c.city, c.VAT, c2.date_timestamp from client c join appointment a on c.VAT = a.VAT_client
    join consultation c2 on a.VAT_doctor = c2.VAT_doctor and a.date_timestamp = c2.date_timestamp
    where c2.SOAP_O like '%gingivitis%' or c2.SOAP_O like '%periodontitis%' and (c2.VAT_doctor, c2.date_timestamp) in (select con.VAT_doctor, MAX(con.date_timestamp) from consultation con  join appointment ap on con.VAT_doctor = ap.VAT_doctor and con.date_timestamp = ap.date_timestamp join client cl on ap.VAT_client = cl.VAT group by cl.VAT);


# 4. Name, VAT, address(street, city, zip) of client that had appointments but never had consultation
SELECT c.name, c.VAT as VAT_client, c.street, c.city, c.zip from client c join appointment a on c.VAT = a.VAT_client
    where a.date_timestamp < CURRENT_TIME() and (a.VAT_doctor, a.date_timestamp) not in (select con.VAT_doctor, con.date_timestamp from consultation con);

# 5. For each diagnosis: code and description, list the number of distinct medication names that have been prescribed to treat that condition.
# sort by number of distinct medications names, ASC
SELECT d_c.ID as diagnosis_id, d_c.description as diagnosis_description, COUNT(DISTINCT p.name) as number_medicaments_prescribed from diagnostic_code d_c join consultation_diagnostic cd on d_c.ID = cd.ID
    join prescription p on cd.VAT_doctor = p.VAT_doctor and cd.date_timestamp = p.date_timestamp and cd.ID = p.ID
    group by d_c.ID, d_c.description order by COUNT(DISTINCT  p.name) ASC;

# 6. Avg number of nurser, procedures, diagnostic codes, and prescriptions involved in consultation from year 2019.
# show results respectively for clients above and below 18 years old.

SELECT DISTINCT AVG(ca1.count_nurse) as avg_num_nurses_above18, AVG(pic1.count_procedure) as avg_num_proc_above18, AVG(cd1.count_diagnosis) as avg_num_diag_above18,
    AVG(ca2.count_nurse) as avg_num_nurses_below18, AVG(pic2.count_procedure) as avg_num_proc_below18, AVG(cd2.count_diagnosis) as avg_num_diag_below18 from
    (SELECT ca.date_timestamp, ca.VAT_doctor, COUNT(ca.VAT_nurse) as count_nurse from consultation_assistant ca join appointment a on ca.date_timestamp = a.date_timestamp join client c on a.VAT_client = c.VAT
        where ca.date_timestamp >= DATE('2019-01-01') and (YEAR(CURDATE()) - YEAR(c.birth_date)) >= 18 group by ca.date_timestamp, ca.VAT_doctor) as ca1 ,
    (SELECT pic.date_timestamp, pic.VAT_doctor, COUNT(pic.name) as count_procedure from procedure_in_consultation pic join appointment a on pic.date_timestamp = a.date_timestamp join client c on a.VAT_client = c.VAT
        where pic.date_timestamp >= DATE('2019-01-01') and (YEAR(CURDATE()) - YEAR(c.birth_date)) >= 18 group by pic.date_timestamp, pic.VAT_doctor) as pic1,
    (SELECT cd.date_timestamp, cd.VAT_doctor, COUNT(cd.ID) as count_diagnosis from consultation_diagnostic cd join appointment a on cd.date_timestamp = a.date_timestamp join client c on a.VAT_client = c.VAT
        where cd.date_timestamp >= DATE('2019-01-01') and (YEAR(CURDATE()) - YEAR(c.birth_date)) >= 18 group by cd.date_timestamp, cd.VAT_doctor) as cd1,
    (SELECT ca.date_timestamp, ca.VAT_doctor, COUNT(ca.VAT_nurse) as count_nurse from consultation_assistant ca join appointment a on ca.date_timestamp = a.date_timestamp join client c on a.VAT_client = c.VAT
        where ca.date_timestamp >= DATE('2019-01-01') and (YEAR(CURDATE()) - YEAR(c.birth_date)) < 18 group by ca.date_timestamp, ca.VAT_doctor) as ca2 ,
    (SELECT pic.date_timestamp, pic.VAT_doctor, COUNT(pic.name) as count_procedure from procedure_in_consultation pic join appointment a on pic.date_timestamp = a.date_timestamp join client c on a.VAT_client = c.VAT
        where pic.date_timestamp >= DATE('2019-01-01') and (YEAR(CURDATE()) - YEAR(c.birth_date)) < 18 group by pic.date_timestamp, pic.VAT_doctor) as pic2,
    (SELECT cd.date_timestamp, cd.VAT_doctor, COUNT(cd.ID) as count_diagnosis from consultation_diagnostic cd join appointment a on cd.date_timestamp = a.date_timestamp join client c on a.VAT_client = c.VAT
        where cd.date_timestamp >= DATE('2019-01-01') and (YEAR(CURDATE()) - YEAR(c.birth_date)) < 18 group by cd.date_timestamp, cd.VAT_doctor) as cd2
;
