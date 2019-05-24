use employees;

-- Create classic - ‘Author’ / ‘Book’ example, where the Author has many books.
--  	Don’t worry about multiple authors per book. (applying the K.I.S.S. principle)
-- Author should have the following properties: first name, last name, email, phone, website, date created, date updated.
-- Book should have the following properties: title, subtitle, description, ISBN, price, date created, date updated. 
-- Follow best practices - use primary key, auto-increment, proper data types.
-- ISBN is unique and should be enforced.

DROP TABLE IF EXISTS BOOK;
DROP TABLE IF EXISTS AUTHOR;

CREATE TABLE author (
	id INTEGER auto_increment,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(256),
    phone VARCHAR(15),
    website VARCHAR(200),
    date_created timestamp,
    date_updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE book (
    id INTEGER AUTO_INCREMENT,
    author_id INTEGER,
    title VARCHAR(100),
    sub_title VARCHAR(150),
    description TEXT,
    isbn CHAR(13),
    price DECIMAL(9 , 2 ),
    date_created TIMESTAMP,
    date_updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE KEY (isbn),
    CONSTRAINT fk_book_author 
        FOREIGN KEY (author_id)
        REFERENCES author (id)
);