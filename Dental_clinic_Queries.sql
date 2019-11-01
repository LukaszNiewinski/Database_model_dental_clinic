# 1. VAT, names and phone(s) numbers of clients that had appointemnt with 'Jane Sweettooth. Ordered by names.
SELECT c.VAT, c.name, GROUP_CONCAT(DISTINCT p_c.phone) as phone_numbers from client c join appointment a on c.VAT = a.VAT_client join doctor d on a.VAT_doctor = d.VAT
    join employee e on d.VAT = e.VAT, phone_number_client p_c where e.name like 'Jane Sweettoth' and a.date_timestamp <= CURRENT_TIME and c.VAT = p_c.VAT group by c.VAT ORDER BY c.name;

