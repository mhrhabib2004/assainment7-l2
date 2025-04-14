-- Active: 1743639780257@@127.0.0.1@5432@bookstore
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    joined_date DATE DEFAULT CURRENT_DATE
)