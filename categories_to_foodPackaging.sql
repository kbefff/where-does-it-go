CREATE TABLE foodPackaging (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  foodPackaging_categories VARCHAR(655) NOT NULL,
  Primary Key (id)
);



INSERT INTO foodPackaging (foodPackaging_categories, categoryId) 
VALUES 

("Bread Bags", 6),
("Compostable Bags", 6),
("Chip Bags", 6),
("Food Box Liners", 6),
("Grocery Bags", 6),
("Juice Pouches", 6),
("Microwave Popcorn Bags", 6),
("Plastic without Recycle Symbol", 6),
("Pet Food Bags", 6),
("Produce or Bulk Food Bags", 6),
("Ziploc Bags", 6)




SELECT * from categories;
SELECT * FROM foodPackaging;

SELECT foodPackaging_categories, categoryName
FROM foodPackaging
INNER JOIN categories ON foodPackaging.categoryId = categories.id;


SELECT foodPackaging_categories, categoryName
FROM foodPackaging
LEFT JOIN categories ON foodPackaging.categoryId = categories.id;

SELECT foodPackaging_categories, categoryName
FROM foodPackaging
RIGHT JOIN categories ON foodPackaging.categoryId = categories.id;