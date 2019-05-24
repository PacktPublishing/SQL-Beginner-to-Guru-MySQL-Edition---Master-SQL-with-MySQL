use employees;

select * from salaries;

select date_format(from_date, '%Y') from salaries;

select date_format(from_date, '%Y') as year, sum(salary) from salaries group by year;