use employees;
 
-- create employee record
-- create title record
-- create employee department record
-- create employee salary record

SET @foo = 'bar';

SELECT @foo;

begin;

SELECT (@employee_no:=(max(emp_no) + 1)) from employees;

INSERT INTO employees values (@employee_no, '1985-01-01', 'Sam', 'Axe', 'M', '2018-01-01');

INSERT INTO titles VALUES (@employee_no, 'Staff', '2018-01-01', '9999-01-01');

INSERT INTO dept_emp VALUES (@employee_no, 'd008', '2018-01-01', '9999-01-01');

INSERT INTO salaries VALUES (@employee_no, 120000, '2018-01-01', '9999-01-01');

commit;

select * from salaries where emp_no = @employee_no;

select * from employees where emp_no = @employee_no;