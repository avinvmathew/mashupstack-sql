-- Imagine you are creating a simple system for a school library. Each book has a unique ID and belongs to a single 
-- category (like Fiction, Science, History, etc.), but each category can have many books.
-- Create two tables:
-- categories with category details

CREATE TABLE categories ( category varchar(255) UNIQUE, category_details varchar(255) );

-- books with book details, where each book is linked to a category

-- Use AUTO_INCREMENT for the IDs.
-- Add a one-to-many relationship between categories and books.

CREATE TABLE books2 ( book_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, book_name varchar(255), category varchar(255), FOREIGN KEY (category) REFERENCES categories(category) );

-- Create an index on the book_name column of the books table.

CREATE INDEX index3 ON books2(book_name);

-- Show all indexes in the books table.

SHOW INDEXES FROM books2;
