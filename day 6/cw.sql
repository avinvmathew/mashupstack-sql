-- You are helping manage a small bookstore’s online database. The main table is called books, and there's another
--  table for bestsellers named bestsellers. Both tables have these columns:
-- id (number)
-- title (text)
-- author (text)
-- genre (text)
-- price (decimal)
-- copies_sold (number)


-- Your tasks:
-- Add the following 3 books into the books table:
-- (1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200)
-- (2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000)
-- (3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800)

INSERT INTO books VALUES 
(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200), 
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000), 
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);


-- Add the following 2 books into the bestsellers table:
-- (4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500)
-- (5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200)

INSERT INTO bestsellers VALUES 
(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500), 
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);

-- Show the list of all books from both tables, displaying only the title and author.

SELECT title, author FROM books UNION SELECT title, author FROM bestsellers;

-- Display all books from the books table where the price is greater than 400.

SELECT * FROM books WHERE price > 400;

-- Show the average price of books in the books table.

SELECT AVG(price) AS average_price FROM books;

-- Display the number of books in the books table using a count.

SELECT COUNT(*) AS no_of_books FROM books;

-- Show the title and author from books table with aliases Book Title and Written By.

SELECT title AS 'Book Title', author AS 'Written By' FROM books;
