-- create virtual table with fts5 extension 
CREATE VIRTUAL TABLE books_search USING fts5(title);

INSERT INTO books_search(docid, title) SELECT book_id, title FROM books;

SELECT * FROM books_search WHERE books_search MATCH 'Harry';
