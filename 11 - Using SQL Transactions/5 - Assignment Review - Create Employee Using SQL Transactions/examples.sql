use employees;
 
-- create employee record
-- create title record
-- create employee department record
-- create employee salary record

begin;

INSERT INTO employees SELECT max(emp_no) + 1, '1985-01-01', 'Jessie', 'Porter', 'M', '2018-01-01' FROM employees;

INSERT INTO titles SELECT max(emp_no), 'Staff', '2018-01-01', '9999-01-01'FROM employees;

INSERT INTO dept_emp SELECT max(emp_no), 'd008', '2018-01-01', '9999-01-01'FROM employees;

INSERT INTO salaries SELECT max(emp_no), 120000, '2018-01-01', '9999-01-01' FROM employees;

commit;


SELECT * from employees where first_name = 'Jessie' and last_name = 'Porter';