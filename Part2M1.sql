select book_id,title,year_published ,
dense_rank() OVER (order by year_published) AS dense_rank 
From books ;

