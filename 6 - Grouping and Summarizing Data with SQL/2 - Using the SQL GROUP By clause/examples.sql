use employees;

select first_name, count(*) from employees group by first_name;

select birth_date, count(*) from employees group by birth_date;

select salary, count(*) as sal_count from salaries group by salary order by sal_count desc;