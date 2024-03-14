-- Creat table audit
CREATE TABLE books_audit (
    audit_id INTEGER PRIMARY KEY,
    book_id INTEGER,
    action TEXT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);

--trigger for INSERT
CREATE TRIGGER books_insert_trigger
AFTER INSERT ON books
BEGIN
    INSERT INTO books_audit (book_id, action)
    VALUES (NEW.book_id, 'INSERT');
END;

-- trigger for UPDATE
CREATE TRIGGER books_update_trigger
AFTER UPDATE ON books
BEGIN
    INSERT INTO books_audit (book_id, action)
    VALUES (NEW.book_id, 'UPDATE');
END;

-- trigger for DELETE
CREATE TRIGGER books_delete_trigger
AFTER DELETE ON books
BEGIN
    INSERT INTO books_audit (book_id, action)
    VALUES (OLD.book_id, 'DELETE');
END;
