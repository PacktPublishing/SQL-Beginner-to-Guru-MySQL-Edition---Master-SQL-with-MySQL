use employees;

SELECT RIGHT('asdf', 1);

SELECT LEFT('asdf', 2);

SELECT * from employees;

SELECT first_name, last_name, 
concat(LEFT(first_name, 1), LEFT(last_name, 1)) as Initials from employees;