use employees;
 
SELECT dept_name, emp.emp_no, first_name, last_name FROM
employees AS emp
 JOIN 
 dept_manager AS dm
 ON emp.emp_no = dm.emp_no
 JOIN 
 departments AS dept
 ON dm.dept_no = dept.dept_no
WHERE
 dm.to_date = '9999-01-01' 
order by dept_name; 
 
SELECT dept_name, emp.emp_no, first_name, last_name FROM
employees AS emp
 JOIN 
 dept_manager AS dm
 ON emp.emp_no = dm.emp_no
 JOIN 
 departments AS dept
 ON dm.dept_no = dept.dept_no
WHERE
 dm.to_date = '9999-01-01' 
 AND emp.gender = 'F'
order by dept_name;  
 
SELECT dept_name, emp.emp_no, first_name, last_name FROM
employees AS emp
 JOIN 
 dept_manager AS dm
 ON emp.emp_no = dm.emp_no
 JOIN 
 departments AS dept
 ON dm.dept_no = dept.dept_no
WHERE
 dm.to_date = '9999-01-01' 
 AND emp.gender = 'M'
order by dept_name;  
  