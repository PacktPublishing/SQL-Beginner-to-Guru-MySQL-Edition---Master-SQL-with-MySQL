use employees;

SELECT * FROM salaries;

SELECT salary FROM salaries;

SELECT salary * .01 as weekly FROM salaries;

SELECT salary, salary * .01 as weekly FROM salaries;

SELECT salary, 
salary * .01 as weekly,
salary * .01 * 4 as monthly FROM salaries;

SELECT salary, 
salary * .01 as weekly,
salary * .01 * 4 as monthly,
salary * .01 * 52 as yearly  FROM salaries;

SELECT salary, 
salary * .01 as weekly,
salary * .01 * 4 as monthly,
salary * .01 * 52 as yearly,  
salary + 200 * .01 as multiply_first FROM salaries;

SELECT salary, 
salary * .01 as weekly,
salary * .01 * 4 as monthly,
salary * .01 * 52 as yearly,  
(salary + 200) * .01 as add_first,
salary *.01 / 7 as daily FROM salaries;

SELECT salary, 
salary * .01 as weekly,
salary * .01 * 4 as monthly,
salary * .01 * 52 as yearly,  
(salary + 200) * .01 as add_first,
salary *.01 / 7 as daily,
salary DIV 3 as div_op FROM salaries;

SELECT salary, 
salary * .01 as weekly,
salary * .01 * 4 as monthly,
salary * .01 * 52 as yearly,  
(salary + 200) * .01 as add_first,
salary *.01 / 7 as daily,
salary DIV 3 as div_op,
salary % 3 as mod_op FROM salaries;