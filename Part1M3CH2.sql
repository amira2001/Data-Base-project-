SELECT * 
FROM authors
LEFT JOIN books ON authors.author_id=books.author_id
WHERE books.author_id IS NULL
