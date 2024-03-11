/*Generate a report that shows each author's last book year published using a subquery.*/
SELECT * 
FROM authors A
JOIN (
    SELECT author_id , max(year_published)
    FROM books 
    GROUP BY author_id) as last_book
ON A.author_id=last_book.author_id

