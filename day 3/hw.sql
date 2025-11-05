-- You are working for a local bookstore that sells books both online and offline. The manager has asked you to help prepare reports from the books table. The table has the following columns:
-- id (number)
-- title (text)
-- author (text)
-- price (number)
-- stock_status (text: either 'In Stock' or 'Out of Stock')
-- genre (text)
-- Your tasks are:

INSERT INTO books (id, title, author, price, stock_status, genre) VALUES
(1, 'A Brief History of Time', 'Stephen Hawking', 850.00, 'In Stock', 'Science'),
(2, 'Pride and Prejudice', 'Jane Austen', 350.00, 'In Stock', 'Classic'),
(3, 'Where the Crawdads Sing', 'Delia Owens', 420.00, 'Out of Stock', 'Fiction'),
(4, 'The Hobbit', 'J.R.R. Tolkien', 750.00, 'Out of Stock', 'Fantasy'),
(5, 'The Silent Patient', 'Alex Michaelides', 390.00, 'In Stock', 'Thriller'),
(6, 'Educated', 'Tara Westover', 680.00, 'In Stock', 'Biography'),
(7, 'The Giver', 'Lois Lowry', 280.00, 'Out of Stock', 'Science Fiction');

-- Show all the different genres available in the store (no duplicates).

SELECT DISTINCT genre FROM books;

-- List all books that are in stock and priced below 400.

SELECT * FROM books WHERE price < 400 AND stock_status = 'In Stock';

-- List all books that are either out of stock or have a price above 700.

SELECT * FROM books WHERE stock_status = 'Out of Stock' OR price > 700;

-- Show the title and price of every book along with a new column that adds 10% GST to the price.

SELECT title, price, price+(price*0.10) as price_with_tax FROM books;

-- Display the title, price, and stock_status of all books, sorted by price from highest to lowest.

SELECT title, price, stock_status FROM books ORDER BY price DESC;

