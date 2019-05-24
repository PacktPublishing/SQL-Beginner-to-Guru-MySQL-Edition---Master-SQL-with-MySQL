use employees;
 
select * from employees where emp_no not in (select emp_no from dept_manager);

SELECT * FROM employees as emp
  LEFT JOIN dept_manager as dm
  ON emp.emp_no = dm.emp_no;
  
SELECT emp.emp_no, dm.emp_no, first_name, last_name FROM employees as emp
  LEFT JOIN dept_manager as dm
  ON emp.emp_no = dm.emp_no;  
  
SELECT emp.emp_no, dm.emp_no, first_name, last_name FROM employees as emp
  LEFT JOIN dept_manager as dm
  ON emp.emp_no = dm.emp_no
  where dm.emp_no is not null;
