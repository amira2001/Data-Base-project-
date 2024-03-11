/*Find the author who has the most books.*/

SELECT authors.author_id, authors.name, MAX(count_books.N_books) AS max_books
FROM authors
JOIN (
    SELECT author_id ,count(*) as N_books
    FROM books
    GROUP BY author_id ) as count_books
ON authors.author_id = count_books.author_id