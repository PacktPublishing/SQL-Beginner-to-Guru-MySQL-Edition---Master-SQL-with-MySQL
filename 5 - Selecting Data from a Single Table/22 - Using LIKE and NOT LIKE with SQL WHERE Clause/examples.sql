use employees;

select * from employees;

select * from employees where first_name like 'E%';

select * from employees where first_name like 'Elv%' and last_name like '_e%';

select * from employees where first_name like 'Elv%' and last_name like '_e%' 
and last_name not like '%n' ;