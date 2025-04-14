
<h1 align="center">*** PostgreSQL প্রশ্নোত্তর ***</h1>
 
 
## 1. What is PostgreSQL?
PostgreSQL একটি শক্তিশালী, Open-source relational database management system (RDBMS)। এটি Complex Query, JSON support করে।

<br />


## 2. What is the purpose of a database schema in PostgreSQL?
Schema হলো Logical Operation যা Database Object (Table, View, Function) Organise করে। টেবিল গ্রুপ করা, একাধিক user এর মধ্যে data আলাদা করা, Permission Management সহজ করা ইত্যাদি।


<br />


## 3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
1. **Primary Key:** Table এর প্রতিটি Row Uniquely Identify করে (যেমন: id SERIAL PRIMARY KEY).

2. **Foreign Key:** এক Table এর কলাম অন্য Table এর Primary Key Refer কে বুঝায়। (যেমন: customer_id INT REFERENCES customers(id)).

<br />

## 4. What is the difference between the VARCHAR and CHAR data types?
1. **VARCHAR:** Variable length string যা Maximum  n character হয়।

2. **CHAR:** Fixed length string বুঝায় যা সবসময় n character নেয়।

<br />

## 5. Explain the purpose of the WHERE clause in a SELECT statement.
WHERE Clause Data Filter করতে ব্যবহৃত হয়। যেমন: 
```
SELECT * FROM products WHERE price > 100;
```
এখারে Select Statement এ  WHERE Clause দ্বারা Products Cullection থেকে price এর data filter করে আনা হয়েছে।

<br />

## 6. What are the LIMIT and OFFSET clauses used for?
1. **LIMIT:** Result এর সংখ্যা সীমিত করে।

2. **OFFSET:** নির্দিষ্ট সংখ্যক Row Data স্কিপ করে।

<br />

## 7. How can you modify data using UPDATE statements?
Data Update করতে:
```
UPDATE books
SET price = ROUND(price * 1.10, 2)
WHERE published_year < 2000;
```
এখানে 2000 সাল পূর্বের সকল data এর price 10% করে বাড়বে। এভাবে আমরা update statement use করতে পারি।

<br />

## 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
JOIN Operation টেবিল থেকে ডাটা কম্বাইন করে। যেমন: 
```
SELECT 
    SUM(b.price * o.quantity) AS total_revenue
FROM 
    orders o
JOIN 
    books b ON o.book_id = b.id;
```

<br />

## 9. Explain the GROUP BY clause and its role in aggregation operations.
Data কে Group করে aggregation function প্রয়োগ করতে পারে। যেমন: 
```
SELECT 
    c.name,
    COUNT(o.id) AS total_orders
FROM 
    customers c
JOIN 
    orders o ON c.id = o.customer_id
GROUP BY 
    c.name
ORDER BY 
    total_orders DESC;
```
এখানে total order এর data group করা হয়েছে।

<br />

## 10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?
1. **count() :** Row সংখ্যা।

2. **SUM() :** মানের যোগফল।

3. **AVG() :** গড় মান।
```
SELECT 
    COUNT(*) AS total_books,
    AVG(price) AS avg_price,
    SUM(stock) AS total_stock
FROM books;
```