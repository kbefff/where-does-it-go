CREATE TABLE hazardousItems (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  hazardousItems_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);



INSERT INTO hazardousItems (hazardousItems_categories, categoryId) 
VALUES 

("Aerosol Cans", 8),
("Ammunition or Guns", 8),
("Asbestos", 8),
("Batteries", 8),
("Compressed Gas Containers", 8),
("Contaminated Dirt or Soil", 8),
("Fiberglass", 8),
("Fireworks", 8),
("Fluorescent Light Bulbs", 8),
("Liquids & Household Supplies", 8),
("Medicines", 8),
("Motor Oil Containers", 8),
("Needles or Syringes", 8),
("Oil Filters", 8),
("Oil Tanks", 8),
("Pesticides", 8),
("Toner or Printer Cartridges", 8),
("Smoke Detectors", 8),
("Thermometers or Mercury Items", 8);



SELECT * from categories;
SELECT * FROM hazardousItems;

SELECT hazardousItems_categories, categoryName
FROM hazardousItems
INNER JOIN categories ON hazardousItems.categoryId = categories.id;


SELECT hazardousItems_categories, categoryName
FROM hazardousItems
LEFT JOIN categories ON hazardousItems.categoryId = categories.id;

SELECT hazardousItems_categories, categoryName
FROM hazardousItems
RIGHT JOIN categories ON hazardousItems.categoryId = categories.id;