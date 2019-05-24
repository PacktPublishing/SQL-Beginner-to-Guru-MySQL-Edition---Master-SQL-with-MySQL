use employees;

select * from salaries;

select * from salaries order by from_date, salary desc;

select * from employees;

select * from employees order by first_name;

select * from employees where first_name = 'Elvis' order by gender desc, birth_date desc, last_name;