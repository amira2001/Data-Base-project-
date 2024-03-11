/* selectionner les auteurs ayant le prix de livre superieur a la moyenne */
Select * 
FROM authors A, books B 
WHERE A.author_id= B.author_id and  price > (SELECT avg(price) from books);

