CREATE TABLE glassAndCeramics (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  glassAndCeramics_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);



INSERT INTO glassAndCeramics (glassAndCeramics_categories, categoryId) 
VALUES ("Auto Glass", 7),
("Broken Glass", 7),
("Drinking Glasses", 7),
("Eyeglasses", 7),
("Glass Bottles or Jars", 7),
("Glass or Ceramic Household Items", 7),
("Fluorescent Light Bulbs", 7),
("Halogen or Xenon Light Bulbs", 7),
("Incandescent Light Bulbs", 7),
("LED Light Bulbs", 7),
("Mercury Thermometers", 7),
("Mugs, Plates, or Bowls", 7),
("Window or Picture Glass", 7);



SELECT * from categories;
SELECT * FROM glassAndCeramics;

SELECT glassAndCeramics, categoryName
FROM glassAndCeramics
INNER JOIN categories ON glassAndCeramics.categoryId = categories.id;

SELECT glassAndCeramics, categoryName
FROM glassAndCeramics
LEFT JOIN categories ON glassAndCeramics.categoryId = categories.id;

SELECT glassAndCeramics, categoryName
FROM glassAndCeramics
RIGHT JOIN categories ON glassAndCeramics.categoryId = categories.id;
