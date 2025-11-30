-- You are designing a basic inventory system for a library. Your task is to:
-- Create a table named authors with the following:
-- author_id which should increase automatically for every new author added
-- name of the author

CREATE TABLE AUTHORS( author_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar(255) );

-- Create another table named books with the following:
-- book_id which should also increase automatically
-- title of the book
-- author_id which connects each book to an author

CREATE TABLE books( book_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, title varchar(255), author_id int, FOREIGN KEY (author_id) REFERENCES authors(author_id) );

-- Make sure that one author can have many books (one-to-many relationship).
-- Create an index on the author_id column in the books table to improve search performance.

CREATE INDEX index2 ON books(author_id);

