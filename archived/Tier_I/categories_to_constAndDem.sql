CREATE TABLE constructionAndDemolition (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  constructionAndDemolition_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);

INSERT INTO constructionAndDemolition (constructionAndDemolition_categories, categoryId) 
VALUES ("Exteriors", 2),
("Floors & Ceiling", 2),
("Furnaces & Fixtures", 2),
("Salvaged Materials", 2),
("Soil, Rock, Brick, & Concrete", 2),
("Kitchen", 2),
("Windows & Walls", 2),
("Wood Wastes", 2);



SELECT * from categories;
SELECT * FROM constructionAndDemolition;

SELECT constructionAndDemolition, categoryName
FROM constructionAndDemolition
INNER JOIN categories ON constructionAndDemolition.categoryId = categories.id;

SELECT constructionAndDemolition, categoryName
FROM constructionAndDemolition
LEFT JOIN categories ON constructionAndDemolition.categoryId = categories.id;

SELECT constructionAndDemolition, categoryName
FROM constructionAndDemolition
RIGHT JOIN categories ON constructionAndDemolition.categoryId = categories.id;
