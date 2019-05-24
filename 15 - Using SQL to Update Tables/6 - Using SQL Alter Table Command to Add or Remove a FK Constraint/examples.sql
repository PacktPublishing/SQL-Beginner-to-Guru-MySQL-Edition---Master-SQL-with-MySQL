use employees;

ALTER TABLE book DROP FOREIGN KEY book_ibfk_1;

ALTER TABLE book ADD
	foreign key fk_book_author (author_id)
    REFERENCES author (id);