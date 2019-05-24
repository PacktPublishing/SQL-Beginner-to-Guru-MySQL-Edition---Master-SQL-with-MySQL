use employees;

select * from salaries;

select first_name, count(*) as emp_count from employees group by first_name;

select first_name, count(*) as emp_count from employees group by first_name having emp_count > 250;

select salary, count(*) as sal_count from salaries group by salary having sal_count > 100 order by sal_count asc;

select salary, count(*) as sal_count 
from salaries 
where from_date > '1994-06-24'
group by salary 
having sal_count > 50 
order by sal_count asc;