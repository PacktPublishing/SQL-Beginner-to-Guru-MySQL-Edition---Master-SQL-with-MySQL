use employees;
 
select * from employees where first_name = 'Jessie' and last_name = 'Porter';

SELECT * FROM  employees
where emp_no = 500002;

update employees set first_name = 'Sam', last_name = 'Axe'
where emp_no = 500002;