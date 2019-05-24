use employees;

select * from salaries;

select count(*) from salaries;

select * from salaries where salary > 66961;

select count(*) from salaries where salary > 66961;

select count(*) from salaries where salary < 66961;

select count(*) from salaries where salary > 66961 and from_date > '1989-06-25';

select * from employees;

select * from employees where first_name > 'sammy';