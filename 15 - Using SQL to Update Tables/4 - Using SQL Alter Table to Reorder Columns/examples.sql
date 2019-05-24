use employees;

ALTER TABLE author add column middle_name varchar(50);

ALTER TABLE author CHANGE COLUMN middle_name middle_name VARCHAR(50) after first_name;

ALTER TABLE author MODIFY middle_name VARCHAR(50) after last_name;

ALTER TABLE author drop column middle_name;

ALTER TABLE author add column middle_name varchar(50) AFTER first_name;
