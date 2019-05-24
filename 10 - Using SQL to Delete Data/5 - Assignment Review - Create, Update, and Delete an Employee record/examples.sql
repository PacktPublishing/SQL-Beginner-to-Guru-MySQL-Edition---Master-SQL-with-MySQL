use employees;

select * from employees;

INSERT INTO employees SELECT max(emp_no) + 1, '1976-02-02', 'Micheal', 'Weston', 'M', '2015-01-02' FROM employees;

SELECT * from employees where last_name = 'Weston';

UPDATE employees
SET birth_date = '1976-03-02'
WHERE emp_no = 500000;

DELETE FROM employees 
WHERE emp_no = 500000;