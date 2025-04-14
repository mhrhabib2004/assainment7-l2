-- Active: 1743639780257@@127.0.0.1@5432@bookstore
-- Create books table
CREATE TABLE books (
    id SERIAL PRIMARY KEY, 
    title TEXT NOT NULL,
    author VARCHAR(100),
    price NUMERIC(10, 2) CHECK (price >= 0),
    stock INTEGER CHECK (stock >= 0), 
    published_year INTEGER ); 
