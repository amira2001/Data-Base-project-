/*INSERT INTO authors (name, country) VALUES ('Amira', 'United Kingdom');
*/
/*faire une jointure et traiter les valeurs monquante avec la fonction COALESCE*/
SELECT A.* ,COALESCE(B.book_id, 'N/A') AS book_id
FROM authors A
LEFT JOIN books B
ON A.author_id=B.author_id

