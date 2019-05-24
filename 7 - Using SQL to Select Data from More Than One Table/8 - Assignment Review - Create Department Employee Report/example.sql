use employees;
 
-- Previous Query 
SELECT 
    dept_name, emp.emp_no, first_name, last_name
FROM
    employees AS emp
        JOIN
    dept_manager AS dm ON emp.emp_no = dm.emp_no
        JOIN
    departments AS dept ON dm.dept_no = dept.dept_no
WHERE
    dm.to_date = '9999-01-01'
ORDER BY dept_name; 

SELECT 
	dept_name, first_name, last_name, title
FROM 
	employees AS emp
		JOIN
    dept_emp AS de ON emp.emp_no = de.emp_no
        JOIN
    departments AS dept ON de.dept_no = dept.dept_no
        JOIN
    titles AS t ON t.emp_no = emp.emp_no    
WHERE
    de.to_date = '9999-01-01' and 
    t.to_date = '9999-01-01'
ORDER BY dept_name, last_name;    