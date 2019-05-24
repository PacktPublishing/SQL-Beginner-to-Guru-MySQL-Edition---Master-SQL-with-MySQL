use employees;
 
SELECT * FROM
employees emp
 JOIN 
 dept_manager dm
 ON emp.emp_no = dm.emp_no
 JOIN 
 departments dept
 ON dm.dept_no = dept.dept_no; 
 
SELECT * FROM
employees as emp
 JOIN 
 dept_manager as dm
 ON emp.emp_no = dm.emp_no
 JOIN 
 departments as dept
 ON dm.dept_no = dept.dept_no;  