use employees;

SELECT * FROM employees WHERE first_name = 'Elvis';

SELECT count(*) FROM employees WHERE first_name = 'Elvis';

SELECT * FROM employees WHERE first_name = 'Elvis' and gender = 'M';

SELECT count(*) FROM employees WHERE first_name = 'Elvis' and gender = 'M';

SELECT * FROM employees WHERE first_name = 'Elvis' and last_name = 'Velasco';

SELECT * FROM employees WHERE first_name = 'Elvis' or last_name = 'Velasco';

SELECT * FROM employees WHERE first_name = 'Elvis' and last_name = 'Velasco'
or first_name = 'Chenye' and last_name = 'Velasco';