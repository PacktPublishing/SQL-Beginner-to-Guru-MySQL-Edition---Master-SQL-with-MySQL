use employees;

DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS drink_order;

CREATE TABLE customer (
    id INTEGER auto_increment,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(2),
    zip_code VARCHAR(10),
    PRIMARY KEY (id)
);

CREATE TABLE drink_order (
	id INTEGER auto_increment, 
	customer_id INTEGER,
	drink_description VARCHAR(100),
    PRIMARY KEY (id),
    CONSTRAINT fk_drink_order_customer
     FOREIGN KEY (customer_id)
     REFERENCES customer (id)
);

insert into customer values (null, 'Michael', 'Weston', '123 Brickel', 'Miami', 'FL', '33123');
insert into drink_order values (123344, 1, 'Scotch');


select * from customer; 
select * from drink_order;