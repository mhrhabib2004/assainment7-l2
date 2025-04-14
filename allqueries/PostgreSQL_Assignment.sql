-- Active: 1743639780257@@127.0.0.1@5432@bookstore


-- 1)  Find books that are out of stock.

SELECT * FROM books WHERE stock = 0;

--2 Retrieve the most expensive book in the store.

SELECT * FROM books ORDER BY price DESC LIMIT 1;

-- 3 Find the total number of orders placed by each customer.

SELECT c.name,count(o.id) as total_order
FROM customers c 
JOIN 
orders o on c.id = o.customer_id
GROUP BY c.name 
ORDER BY total_order DESC ;

-- 4 Calculate the total revenue generated from book sales.

SELECT sum(b.price*o.quantity) FROM orders o 
JOIN books b on o.book_id = b.id;

-- 5 List all customers who have placed more than one order.

SELECT 
c.id,
c.name ,
count(o.id) AS order_count 
from customers c join orders o ON c.id = o.customer_id
GROUP BY c.id , c.name 
HAVING count(o.id) > 1 
ORDER BY order_count ;

-- 6 Find the average price of books in the store.

SELECT round(avg(price),2) as avg_book_price FROM books ;

-- 7 Increase the price of all books published before 2000 by 10%.

-- Update books price 
UPDATE books
SET price = round(price * 1.10,2)
WHERE published_year < 2000;

SELECT * FROM books ORDER BY id 

--  8)  Delete customers who haven't placed any orders

-- delete not ordered customer

DELETE FROM customers
WHERE id NOT IN (SELECT DISTINCT customer_id FROM orders);

-- find customer
SELECT * FROM customers;

 