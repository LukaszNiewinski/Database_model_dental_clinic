# VIEWS
#1
# 1dim_date(date_timestamp,day,month,year)
# IC: date_timestamp corresponds to a date existing in consultations
CREATE VIEW sibd_dental_clinic.dim_date AS
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

DROP view sibd_dental_clinic.dim_age;
CREATE VIEW sibd_dental_clinic.dim_age AS
    SELECT c.VAT as VAT,
           c.gender as gender,
           YEAR(CURDATE()) - YEAR(c.birth_date) - IF
               (STR_TO_DATE(CONCAT(YEAR(CURDATE()), '-', MONTH(c.birth_date), '-', DAY(c.birth_date)) ,'%Y-%c-%e') > CURDATE(), 1, 0) AS age
    FROM client c;
select * from dim_age;

#------------------------------------------------------
# 3
# dim_location_client(zip,city)
# IC: zip corresponds to a zip code existing in clients

drop view dim_location_client;
CREATE VIEW sibd_dental_clinic.dim_location_client AS
    SELECT DISTINCT c.zip as zip,
                    c.city as city
    FROM client c;

INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUE
('200100', 'Simpson_double', '2007-08-25', '389-6072 Ligula. Avenue', 'Miramichi', 'J68 5BA', 'man', 32);
select c.zip, c.city from client c where c.zip = 'J68 5BA';
select * from dim_location where zip = 'J68 5BA';
select * from client;


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