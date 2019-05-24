use employees;

select distinct first_name from employees where first_name like 'E%';

SELECT 
    *
FROM
    employees
WHERE
    first_name IN (SELECT DISTINCT
            first_name
        FROM
            employees
        WHERE
            first_name LIKE 'E%');