CREATE TABLE customer (
    id INTEGER,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(2),
    zip_code VARCHAR(10)
);

CREATE TABLE drink_order (
	id INTEGER, 
	customer_id INTEGER,
	drink_description VARCHAR(100)
);

insert into customer values (1234, 'Michael', 'Weston', '123 Brickel', 'Miami', 'FL', '33123');
insert into drink_order values (123344, 1234, 'Scotch');

select * from drink_order;
