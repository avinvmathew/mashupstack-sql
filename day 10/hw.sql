-- You are designing a simple database for an online book store. The store keeps track of authors and the books they write.
-- Create a table for authors with the following information:
-- Author ID (a unique number for each author)
-- Author name (e.g., "Chetan Bhagat")
-- Email address (should be unique)

CREATE TABLE AUTHORS( author_id int UNIQUE, author_name varchar(255), email varchar(255) UNIQUE );

-- Create a table for books with the following information:
-- Book ID (a unique number for each book)
-- Book title
-- Author ID (to show which author wrote the book)
-- Apply appropriate rules so that:
-- No two authors can have the same email address.
-- Each author and book must have a unique ID.
-- Each book must be linked to an existing author.

CREATE TABLE books( book_id int UNIQUE, book_title varchar(255), author_id int, FOREIGN KEY (author_id) REFERENCES authors(author_id) );
