-- Active: 1743639780257@@127.0.0.1@5432@bookstore
-- Create books table
CREATE TABLE books (
    id SERIAL PRIMARY KEY, 
    title TEXT NOT NULL,
    author VARCHAR(100),
    price NUMERIC(10, 2) CHECK (price >= 0),
    stock INTEGER CHECK (stock >= 0), 
    published_year INTEGER ); 

-- Insert data into books table
INSERT INTO books (title, author, price, stock, published_year) VALUES
('The Pragmatic Programmer', 'Andrew Hunt', 40.00, 10, 1999),
('Clean Code', 'Robert C. Martin', 35.00, 5, 2008),
('You Don''t Know JS', 'Kyle Simpson', 30.00, 8, 2014),
('Refactoring', 'Martin Fowler', 50.00, 3, 1999),
('Database Design Principles', 'Jane Smith', 20.00, 0, 2018);

SELECT * FROM books