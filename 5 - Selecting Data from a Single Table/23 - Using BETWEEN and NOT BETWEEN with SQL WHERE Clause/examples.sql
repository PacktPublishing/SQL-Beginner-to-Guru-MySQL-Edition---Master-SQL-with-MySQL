use employees;

select * from salaries;

select * from salaries where salary > 66074 and salary < 71046;

select count(*) from salaries where salary >= 66074 and salary <= 71046;

select count(*) from salaries where salary between 66074 and 71046;

select * from employees;

select * from employees where birth_date between '1954-05-01' and '1956-04-20';

select count(*) from employees where birth_date between '1954-05-01' and '1956-04-20';

select * from employees where birth_date not between '1954-05-01' and '1956-04-20';

select count(*) from employees where birth_date not between '1954-05-01' and '1956-04-20';