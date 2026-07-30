create database healthcare_casestudy;
use healthcare_casestudy;

select count(*) as total from patients;
select * from patients
limit 10;

-- SELECT ONLY 2ND ROW ONLY

select * from patients
LIMIT 1 OFFSET 1;

-- FIND THE PATIENTS REGISTERED IN LAST 30 DAYS

SELECT * FROM PATIENTS
WHERE registration_date >= (SELECT MAX(registration_date) - INTERVAL 30 DAY FROM PATIENTS) 
ORDER BY registration_date DESC;


SELECT * 
FROM patients 
WHERE registration_date >= NOW() - INTERVAL 30 DAY;

SELECT MAX(registration_date) FROM PATIENTS;

select count(*) from doctors;

select distinct(specialization) from doctors;

-- sort the doctors based on experience and provide first and last name of doctor together

select concat(first_name ,' ' , last_name) as doctor_name,
specialization ,years_experience from doctors
order by years_experience desc;


-- find the doctors name ending with 'is'

select first_name , last_name
from doctors
where last_name like 'is%';

-- select distint doctor

select distinct(`phone number`)
from doctors_1;

select * from appointments;

-- total no. of rows

select count(*) from appointments;

-- what is the appointment status distribution

select status, count(*) as total
from appointments
group by status;

-- provide me the status type whose count is more than 50

select status, count(*) 
from appointments
group by status
having count(*) > 50;  -- Having is used with group by not where

-- find all appointments in last 7 days

SELECT * FROM appointments
WHERE appointment_date >= (SELECT MAX(appointment_date) - INTERVAL 7 DAY FROM appointments) 
ORDER BY appointment_date DESC;

SELECT MAX(appointment_date) from appointments; -- most recent appointment date in the table

-- find date wise count of status

select appointment_date ,status, count(status)
from appointments
group by appointment_date,status
order by appointment_date desc;

select * from treatments;
select count(*) from treatments;

-- most common treatment type

select treatment_type, count(*) as treat_count
 from treatments
 group by treatment_type
 order by treat_count desc;
 
 -- find max , min and avg cost of treatment
 
 select min(cost) as min_cost , max(cost) as max_cost,
 round(avg(cost),1) as avg_cost from treatments;
 
select * from billing;
select count(*) from billing;

-- payment status distribution






 
 
 
 
 
 




























