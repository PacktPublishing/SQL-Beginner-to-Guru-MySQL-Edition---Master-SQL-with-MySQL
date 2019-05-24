use employees;

SELECT * FROM
employees
INNER JOIN 
 dept_manager
 ON employees.emp_no = dept_manager.emp_no;
 
SELECT * FROM
employees
 JOIN 
 dept_manager
 ON employees.emp_no = dept_manager.emp_no; 