use employees;
 
-- create employee record
-- create title record
-- create employee department record
-- create employee salary record

INSERT INTO employees SELECT max(emp_no) + 1, '1985-01-01', 'Jessie', 'Porter', 'M', '2018-01-01' FROM employees;

SELECT * from employees where first_name = 'Jessie' and last_name = 'Porter';

INSERT INTO titles VALUES (500002, 'Staff', '2018-01-01', '9999-01-01');

INSERT INTO dept_emp VALUES (500002, 'd008', '2018-01-01', '9999-01-01');

INSERT INTO salaries VALUES (500002, 120000, '2018-01-01', '9999-01-01');

select * from salaries where emp_no = 500002;