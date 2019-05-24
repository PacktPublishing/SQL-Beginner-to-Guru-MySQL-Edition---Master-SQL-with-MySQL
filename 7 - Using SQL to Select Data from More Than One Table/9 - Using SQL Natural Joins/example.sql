use employees;
 
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

SELECT 
	dept_name, first_name, last_name, title
FROM 
	employees AS emp
		NATURAL JOIN
    dept_emp AS de
        NATURAL JOIN
    departments AS dept 
        NATURAL JOIN
    titles AS t 
WHERE
    de.to_date = '9999-01-01' and 
    t.to_date = '9999-01-01'
ORDER BY dept_name, last_name;  