CREATE TABLE categories (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    id_parent INTEGER,
    FOREIGN KEY (id_parent) REFERENCES categories(id)
);

INSERT INTO categories (name, id_parent) VALUES ('Electronics', NULL);
INSERT INTO categories (name, id_parent) VALUES ('Computers', 1);
INSERT INTO categories (name, id_parent) VALUES ('Laptops', 2);
INSERT INTO categories (name, id_parent) VALUES ('Desktop Computers', 2);
INSERT INTO categories (name, id_parent) VALUES ('Smartphones', 1);
INSERT INTO categories (name, id_parent) VALUES ('Android', 5);
INSERT INTO categories (name, id_parent) VALUES ('iOS', 5);

WITH RECURSIVE category_tree AS (
    SELECT id, name, id_parent
    FROM categories
    WHERE id_parent IS NULL

    UNION ALL

    SELECT c.id, c.name, c.id_parent
    FROM categories c
    JOIN category_tree ct ON c.id_parent = ct.id
)
SELECT id, name, id_parent
FROM category_tree
ORDER BY id;


