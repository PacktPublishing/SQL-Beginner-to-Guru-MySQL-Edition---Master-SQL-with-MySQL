use employees;

select count(*) from employees;

select * from employees LIMIT 20;

select * from employees LIMIT 0, 20;

select * from employees LIMIT 19, 20;

select * from employees order by emp_no LIMIT 0, 20;

select * from employees order by emp_no LIMIT 19, 20;

select * from employees limit 300000;