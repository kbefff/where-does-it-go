CREATE TABLE wood (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  wood_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);


INSERT INTO wood (wood_categories, categoryId) 
VALUES 

("Christmas Trees", 13),
("Clean Wood Waste", 13),
("Corks", 13),
("Fireplace or Briquette Ashes", 13),
("Painted or Treated Wood", 13),
("Pallets", 13),
("Reusable Lumber", 13),
("Wood Scraps, Shavings, or Sawdust", 13);



SELECT * from categories;
SELECT * FROM wood;

SELECT wood_categories, categoryName
FROM wood
INNER JOIN categories ON wood.categoryId = categories.id;


SELECT wood_categories, categoryName
FROM wood
LEFT JOIN categories ON wood.categoryId = categories.id;

SELECT wood_categories, categoryName
FROM wood
RIGHT JOIN categories ON wood.categoryId = categories.id;