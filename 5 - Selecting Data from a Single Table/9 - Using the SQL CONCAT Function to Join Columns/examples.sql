use employees;

SELECT count(*) FROM employees;

SELECT first_name, last_name, concat(first_name, last_name) as 'Name' FROM employees;

SELECT first_name, last_name, concat(first_name, ' ', last_name) as 'Name' FROM employees;

SELECT first_name, last_name, concat(first_name, ' | ', last_name) as 'Name' FROM employees;

SELECT first_name, last_name, concat(first_name, ' : ', last_name) as 'Name' FROM employees;
