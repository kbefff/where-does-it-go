CREATE TABLE plastic (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  plastic_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);


INSERT INTO plastic (plastic_categories, categoryId) 
VALUES 

("Bags", 11),
("Recycle Numbers 1-7", 11),
("Food & Beverage Containers", 11),
("Mail Packaging", 11),
("Misc. Plastic", 11),
("Non-Food Containers", 11),
("Straws", 11),
("Styrofoam", 11);

SELECT * from categories;
SELECT * FROM plastic;

SELECT plastic_categories, categoryName
FROM plastic
INNER JOIN categories ON plastic.categoryId = categories.id;


SELECT plastic_categories, categoryName
FROM plastic
LEFT JOIN categories ON plastic.categoryId = categories.id;

SELECT plastic_categories, categoryName
FROM plastic
RIGHT JOIN categories ON plastic.categoryId = categories.id;