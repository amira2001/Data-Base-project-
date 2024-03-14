CREATE INDEX index_authors_author_id ON authors(author_id);
CREATE INDEX index_books_author_id ON books(author_id);

SELECT A.* ,COALESCE(B.book_id, 'N/A') AS book_id
FROM authors A
LEFT JOIN books B
ON A.author_id=B.author_id
