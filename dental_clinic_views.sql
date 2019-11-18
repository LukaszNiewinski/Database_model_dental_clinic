# VIEWS
#1
# 1dim_date(date_timestamp,day,month,year)
# IC: date_timestamp corresponds to a date existing in consultations
CREATE VIEW ist195018.dim_date AS
    SELECT c.date_timestamp as date_stamp,
           EXTRACT(DAY FROM c.date_timestamp) AS day,
           EXTRACT(MONTH FROM c.date_timestamp) AS month,
           EXTRACT(YEAR FROM c.date_timestamp) AS year
FROM consultation c;
select * from dim_date;

#------------------------------------------------------
#2
# dim_client(VAT,gender,age)
# VAT: FK(client)

DROP view ist195018.dim_client;
CREATE VIEW ist195018.dim_client AS
    SELECT c.VAT as VAT,
           c.gender as gender,
           (YEAR(CURDATE()) - YEAR(c.birth_date)) AS age
    FROM client c;
select * from dim_client;

#------------------------------------------------------
# 3
# dim_location_client(zip,city)
# IC: zip corresponds to a zip code existing in clients

drop view ist195018.;
CREATE VIEW ist195018.dim_location_client AS
    SELECT DISTINCT c.zip as zip,
                    c.city as city
    FROM client c;

select * from dim_location_client;


#------------------------------------------------------
#4 NOT WORKING
# facts_consults(VAT,date,zip,num_procedures,num_medications,num_diagnostic_codes)
# VAT: FK(dim_client)
# date: FK(dim_date)
# zip: FK(dim_location_client)

select p.description from prescription p
    natural join consultation_diagnostic natural join consultation where consultation.VAT_doctor = '100100';


drop view facts_consults;
CREATE VIEW sibd_dental_clinic.facts_consults AS
    SELECT c.VAT as VAT_client,
           (dim) as date
    FROM client c, dim_date dat, dim_location_client loc, consultation con;

select name, VAT, street, city, zip from client as c, appointment as a
where c.VAT = a.VAT_client and a.VAT_doctor not in (select VAT_doctor from consultation);


Create View ist195018.facts_consults AS
    SELECT COUNT(np.procedures) as num_procedures,
    SELECT COUNT(nm.medications) as num_medications,
    SELECT COUNT(nd.codes) as num_diagnostic_codes
FROM dim_client, dim_date, dim_location_client,
(SELECT consultation_diagnostic)

;
SELECT pr_c.name from procedure_clinic pr_c;
SELECT d_c.ID from diagnostic_code d_c;
SELECT d_c.ID from diagnostic_code d_c;