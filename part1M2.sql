INSERT INTO customers (first_name, last_name, email, city) VALUES ('Amira', 'BENABBAS', 'amirabenabbas@gmail.com','UK');
INSERT INTO customers (first_name, last_name, email, city) VALUES ('Sarah', 'zemirli', 'sara@example.com','AAA');

UPDATE customers set city = 'eup' where first_name='Sarah' and last_name='zemirli';

delete from customers where first_name='Sarah' and last_name='zemirli';
