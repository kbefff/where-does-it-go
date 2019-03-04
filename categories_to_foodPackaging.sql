CREATE TABLE foodPackaging (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  foodPackaging_categories VARCHAR(655) NOT NULL,
  Primary Key (id)
);


INSERT INTO foodPackaging (foodPackaging_categories, categoryId) 
VALUES 

("Aluminum Foil or Trays", 6),
("Bags & Pouches", 6),
("Bottles & Jugs", 6),
("Boxes, Cartons & Liners", 6),
("Butter Wrappers", 6),
("Compostable Food Service Items", 6),
("Corks", 6),
("Coffee Filters", 6),
("Coffee Pods", 6),
("Egg Cartons", 6),
("Hot Cups or Coffee Cups", 6),
("Lids", 6),
("Metal Cans & Metal Lids", 6),
("Paper & Cardboard", 6),
("Plastic & Styrofoam Containers", 6),
("Straws", 6);


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