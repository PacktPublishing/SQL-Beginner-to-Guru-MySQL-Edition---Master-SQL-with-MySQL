use employees;
 
select * from employees;

SELECT max(emp_no) + 1, '1976-01-01', 'John', 'Thompson', 'M', '2018-06-18' FROM employees;

INSERT INTO employees SELECT max(emp_no) + 1, '1976-01-01', 'John', 'Thompson', 'M', '2018-06-18' FROM employees;

select * from employees where first_name= 'John';