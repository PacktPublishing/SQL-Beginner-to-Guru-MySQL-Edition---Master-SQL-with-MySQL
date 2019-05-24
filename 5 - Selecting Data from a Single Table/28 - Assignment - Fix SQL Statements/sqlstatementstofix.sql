use employees;

SELECT first_name last_name FROM employees;

SELECT emp_no, salary FROM salaries:

SELECT first_name as 'First Name', last_name is 'Last Name' FROM employees;

SELECT first_name, last_name, concat(first_name, ' '', last_name') as 'Name' FROM employees;

SELECT salary, 
salary * .01 as weekly,
salary * .01 * 4 as monthly,
salary * .01  52 as yearly  FROM salaries;

SELECT from_date as original, DATE_FORMAT(from_date, "%M %d %YYYY") FROM salaries; 

SELECT first_name, last_name, 
concat(LEFT(first_name, 1), LEFT(last_name, 1))) as Initials from employees;

SELECT * FROM employees WHERE first_name = 'Elvis' and last_name = 'Velasco'
and first_name = 'Chenye' and last_name = 'Velasco';

SELECT * FROM employees WHERE first_name IS IN ('Elvis', 'Sumant','Berni', 'Lillian' );

select * from employees where first_name IS LIKE 'Elv%' and last_name IS LIKE '_e%';

select * from employees where birth_date between ('1954-05-01' and '1956-04-20');

select * from employees order by first_name DESCENDING;

select * from employees order by emp_no LIMIT 0, 20, 88;