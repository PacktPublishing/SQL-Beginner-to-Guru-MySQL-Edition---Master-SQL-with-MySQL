use employees;

SELECT * FROM salaries; 

SELECT date_format("2017-06-15", "%M %d %Y");

SELECT from_date as original, DATE_FORMAT(from_date, "%M %d %Y") FROM salaries; 

SELECT from_date as original, DATE_FORMAT(from_date, "%M %d %Y") version1,
DATE_FORMAT(from_date, "%m %D %Y") version2,
DATE_FORMAT(from_date, "%m-%d-%Y") version3
FROM salaries; 