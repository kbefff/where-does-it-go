CREATE TABLE metalAndMetalItems (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  metalAndMetalItems_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);


INSERT INTO metalAndMetalItems (metalAndMetalItems_categories, categoryId) 
VALUES 

("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9),
("Appliances", 9);



SELECT * from categories;
SELECT * FROM metalAndMetalItems;

SELECT metalAndMetalItems_categories, categoryName
FROM metalAndMetalItems
INNER JOIN categories ON metalAndMetalItems.categoryId = categories.id;


SELECT metalAndMetalItems_categories, categoryName
FROM metalAndMetalItems
LEFT JOIN categories ON metalAndMetalItems.categoryId = categories.id;

SELECT metalAndMetalItems_categories, categoryName
FROM metalAndMetalItems
RIGHT JOIN categories ON metalAndMetalItems.categoryId = categories.id;