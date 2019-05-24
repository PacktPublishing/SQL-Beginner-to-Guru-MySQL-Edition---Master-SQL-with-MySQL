use employees;

select * from employees;

begin;

INSERT INTO employees SELECT max(emp_no) + 1, '1976-02-02', 'Micheal', 'Weston', 'M', '2015-01-02' FROM employees;

commit;

SELECT * from employees where last_name = 'Weston';

commit;

UPDATE employees
SET birth_date = '1976-03-02'
WHERE emp_no = 500000;

DELETE FROM employees 
WHERE emp_no = 500000;


rollback;

-- turn off
set autocommit=0;

-- turn on
set autocommit=1;
