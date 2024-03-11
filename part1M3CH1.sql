/*Practice using INNER JOIN to retrieve data that exists in both authors and books tables.
*/
SELECT * 
FROM authors
INNER JOIN books ON authors.author_id = books.author_id

