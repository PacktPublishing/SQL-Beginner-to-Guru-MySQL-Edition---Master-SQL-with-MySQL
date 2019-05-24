CREATE TABLE persons (
	first_name VARCHAR(255),
	last_name VARCHAR(255)
);

INSERT INTO persons VALUES ('John', 'Thompson');

SELECT concat(first_name, ' ', last_name) as full_name from persons;