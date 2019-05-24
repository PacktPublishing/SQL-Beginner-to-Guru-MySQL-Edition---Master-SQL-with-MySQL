use employees;
 
-- client a 
 
select * from salaries where emp_no = 500000;

begin;

update salaries
set salary = salary + 19
where emp_no = 500000;

commit;

-- client b
SELECT * from employees where first_name = 'Jessie' and last_name = 'Porter';

select * from salaries where emp_no = 500000;

select (@jessieSal:=salary) from salaries where emp_no = 500000;

update salaries
set salary = @jessieSal + 3
where emp_no = 500000;


