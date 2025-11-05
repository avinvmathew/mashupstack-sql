-- You are helping an online store manager view product details from a products table. The table contains the following columns:
-- id (number)
-- name (text)
-- category (text)
-- price (number)
-- in_stock (text, either 'Yes' or 'No')
-- Your task is to:

INSERT INTO products (id, name, category, price, in_stock) VALUES
(101, 'Wireless Mouse', 'Electronics', 350.00, 'Yes'),
(102, 'Mechanical Keyboard', 'Electronics', 1250.00, 'Yes'),
(103, 'T-Shirt', 'Apparel', 450.00, 'Yes'),
(104, 'Coffee Maker', 'Home Goods', 850.00, 'No'),
(105, 'Jeans', 'Apparel', 1100.00, 'No'),
(106, 'LED Monitor', 'Electronics', 3500.00, 'Yes'),
(107, 'Book Shelf', 'Home Goods', 450.00, 'No');

-- Show all the unique product categories available in the table.

SELECT DISTINCT category FROM products2;

-- Select all products that are in stock and have a price less than 500.

SELECT * FROM products2 WHERE in_stock = 'Yes' AND price < 500;

-- Select all products that are not in stock or have a price greater than 1000.

SELECT * FROM products2 WHERE in_stock = 'No' AND price > 1000;

-- Show the names and prices of all products, and sort the results by price from highest to lowest.

SELECT name, price FROM products2 ORDER BY price DESC;

-- Display the name and an expression showing the price with 18% tax added (label it as price_with_tax).

SELECT name, price as old_price, price+(price*0.18) AS price_with_tax FROM products2;
