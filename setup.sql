sqlite3 MyPracticeDB.db 

CREATE TABLE authors (
author_id INTEGER PRIMARY KEY,
name TEXT NOT NULL,
country TEXT
);

CREATE TABLE books (
book_id INTEGER PRIMARY KEY,
title TEXT NOT NULL,
author_id INTEGER,
year_published INTEGER,
price DECIMAL(10, 2),
FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE customers (
customer_id INTEGER PRIMARY KEY,
first_name TEXT NOT NULL,
last_name TEXT NOT NULL,
email TEXT,
city TEXT
);

INSERT INTO authors (name, country) VALUES ('J.K. Rowling', 'United Kingdom');
INSERT INTO authors (name, country) VALUES ('George Orwell', 'United Kingdom');

INSERT INTO books (title, author_id, year_published, price) VALUES ('Harry Potter and the Philosof',1,2010,17.17);
INSERT INTO books (title, author_id, year_published, price) VALUES ('1984', 2, 1949, 14.99);

INSERT INTO customers (first_name, last_name, email, city) VALUES ('John', 'Doe', 'john.doe@example.com','UK');
INSERT INTO customers (first_name, last_name, email, city) VALUES ('Jane', 'Doe', 'jane.doe@example.com','eup');
