-- You are helping manage a simple system for a local library. The librarian has two tables:
-- books – which stores book details

CREATE TABLE books( book_id int, title varchar(255) );
INSERT INTO books VALUES(1,"The Alchemist"),(2,"The Power of Now"),(3,"Think and Grow Rich"),(4,"Clean Code");

-- borrowers – which stores information about who borrowed which book

CREATE TABLE borrowers( borrower_id int, name varchar(255), book_id int );
INSERT INTO borrowers VALUES(101,"Alice",1),(102,"Bob",2),(103,"Charlie",NULL);

-- Your tasks are:

-- Show the list of all books along with the name of the person who borrowed them (if borrowed).

SELECT b.title, br.name FROM books b INNER JOIN borrowers br WHERE b.book_id = br.book_id;

-- Show the list of all borrowers along with the book details they borrowed (if any).

SELECT br.name, b.title, b.book_id FROM books b INNER JOIN borrowers br WHERE b.book_id = br.book_id;

-- Show the list of all books that have not been borrowed by anyone.

SELECT b.book_id, b.title FROM books b LEFT JOIN borrowers br ON b.book_id = br.book_id WHERE br.book_id IS NULL;

-- Show the list of all borrowers even if they haven't borrowed any book.

SELECT name FROM borrowers;

-- books table
-- book_id | title
-- --------|-----------------
-- 1       | The Alchemist
-- 2       | The Power of Now
-- 3       | Think and Grow Rich
-- 4       | Clean Code

-- -- borrowers table
-- borrower_id | name        | book_id
-- ------------      |-------------  |--------
-- 101              | Alice         | 1
-- 102              | Bob          | 2
-- 103              | Charlie     | NULL

