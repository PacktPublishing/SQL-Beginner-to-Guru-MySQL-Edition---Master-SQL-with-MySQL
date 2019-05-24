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
	employees AS emp,
    dept_emp AS de, 
    departments AS dept, 
    titles AS t   
WHERE
    emp.emp_no = de.emp_no AND
    de.dept_no = dept.dept_no AND
    t.emp_no = emp.emp_no AND
    de.to_date = '9999-01-01' AND 
    t.to_date = '9999-01-01'
ORDER BY dept_name, last_name;   

SELECT 
	count(*)
FROM 
	employees AS emp,
    dept_emp AS de, 
    departments AS dept, 
    titles AS t   
WHERE
    emp.emp_no = de.emp_no AND
	de.dept_no = dept.dept_no AND
    t.emp_no = emp.emp_no AND
    de.to_date = '9999-01-01' AND 
    t.to_date = '9999-01-01'
ORDER BY dept_name, last_name;  