# 1. VAT, names and phone(s) numbers of clients that had appointemnt with 'Jane Sweettooth. Ordered by names.
SELECT c.VAT, c.name, GROUP_CONCAT(DISTINCT p_c.phone) as phone_numbers from client c join appointment a on c.VAT = a.VAT_client join doctor d on a.VAT_doctor = d.VAT
    join employee e on d.VAT = e.VAT, phone_number_client p_c where e.name like 'Jane Sweettoth' and a.date_timestamp <= CURRENT_TIME and c.VAT = p_c.VAT group by c.VAT, c.name ORDER BY c.name;

# 2. List the names of trainees doctors with reports graded below three or 'insufficient' in the description.
# To display: Traine name, VAT trainee, supervisor name, evaluation score, sorted by score DESC
SELECT DISTINCT e.name, e.VAT, e_d.name, sr.evaluation, sr.description from employee e join trainee_doctor td on e.VAT = td.VAT
    join supervision_report sr on td.VAT = sr.VAT join employee e_d on e_d.VAT = td.VAT_supervisor where sr.evaluation <= 3 or sr.description like '%insufficient%' order by sr.evaluation;
