-- You are helping a college library manage its books table. The table has the following columns:
-- id (number)
-- title (text)
-- author (text)
-- price (number)
-- genre (text)
-- Complete the following tasks using only the allowed SQL methods and operators:

-- Insert 5 different books into the books table using the INSERT INTO command. Use different values for title, author, 
-- price, and genre.

INSERT INTO books (id, title, author, price, genre) VALUES
(1, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 550.00, 'History'),
(2, 'The Great Gatsby', 'F. Scott Fitzgerald', 350.00, 'Fiction'),
(3, 'The Da Vinci Code', 'Dan Brown', 450.00, 'Thriller'),
(4, 'Cosmos', 'Carl Sagan', 620.00, 'Science'),
(5, '1984', 'George Orwell', 390.00, 'Fiction');

-- Select all books that have a price greater than 400.

SELECT * FROM library WHERE price > 400;

-- Select all books where the genre is either 'History', 'Science', or 'Fiction'.

SELECT * FROM library WHERE genre in ('History', 'Science','Fiction');

-- Select the book where the title is exactly 'The Great Gatsby'.

SELECT * FROM library WHERE title = 'The Great Gatsby';

-- Select all books that are not written by 'Dan Brown'.

SELECT * FROM library WHERE author <> 'Dan Brown';
