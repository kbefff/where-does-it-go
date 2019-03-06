CREATE TABLE metalAndMetalItems (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  metalAndMetalItems_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);


INSERT INTO metalAndMetalItems (metalAndMetalItems_categories, categoryId) 
VALUES 

("Appliances", 9),
("Barrels or Drums", 9),
("Batteries", 9),
("Bicycles or Bike Parts", 9),
("Cans", 9),
("Compressed Gas Containers", 9),
("From the Kitchen", 9),
("Hand Tools", 9),
("Jewelry or Coins", 9),
("Lawn Mowers or Power Equipment", 9),
("License Plates", 9),
("Metals by Type", 9),
("Small Metal Items", 9),
("Window Blinds", 9),
("Wire Clothes Hangers", 9),
("Wire or Cable", 9);



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