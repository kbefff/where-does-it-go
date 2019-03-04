CREATE TABLE paper (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  paper_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);


INSERT INTO paper (paper_categories, categoryId) 
VALUES 

("Cardboard", 10),
("Containers / Boxes / Cartons", 10),
("Food-soiled Paper", 10),
("Misc. Paper", 10),
("Paper, Printed / Reading", 10);


SELECT * from categories;
SELECT * FROM paper;

SELECT paper_categories, categoryName
FROM paper
INNER JOIN categories ON paper.categoryId = categories.id;


SELECT paper_categories, categoryName
FROM paper
LEFT JOIN categories ON paper.categoryId = categories.id;

SELECT paper_categories, categoryName
FROM paper
RIGHT JOIN categories ON paper.categoryId = categories.id;