/*Calculate the total price per author from the books table.*/
SELECT author_id , SUM(price) as total_price 
FROM books 
GROUP BY author_id 