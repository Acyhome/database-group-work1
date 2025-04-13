-- Part 4: Test the database with queries
-- Retrieve all books
SELECT * FROM book;

-- Get authors of a specific group
SELECT a.first_name, a.last_name
FROM book_author ba
JOIN author a ON ba.author_id = a.author_id
WHERE ba.book_id = 1;

-- Get Customer orders
SELECT co.order_id, co.total_price, os.status_name
FROM cust_order co
JOIN order_status os ON co.order_status_id = os.order_status_id;

-- List books in a specific order
SELECT b.title, ol.quantity, ol.price
FROM order_line ol
JOIN book b ON ol.book_id = b.book_id
WHERE ol.order_id = 101;

-- Get all books with their authors
SELECT b.title, a.first_name, a.last_name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;
