/*Modify the books table to ensure all books have a unique name 
and a non-null price.*/
/*SQLite does not support ALTER TABLE statement 
to add UNIQUE constraint to the existing table*/

/*Rename the table to books2*/
Alter TABLE books rename to books2;

/*Create a new table with same structure but UNIQUE constraint added and Non NULL*/
CREATE TABLE books (
book_id INTEGER PRIMARY KEY,
title TEXT UNIQUE NOT NULL,
author_id INTEGER,
year_published INTEGER,
price DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

/*Copy the data from renamed table to new table*/
insert into books select * from books2