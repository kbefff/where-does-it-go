-- source main.sql
DROP DATABASE IF EXISTS where_does_it_go;
CREATE DATABASE where_does_it_go;
USE where_does_it_go;

-- ============================ CATEGORIES ============================
CREATE TABLE categories (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryName VARCHAR(255) NOT NULL,
  Primary Key (id)
);

INSERT INTO categories (categoryName)
VALUES ("Household Items"),
("Construction & Demolition"),
("Electronics"),
("Fabric"),
("Food"),
("Food Packaging"),
("Glass & Ceramics"),
("Hazardous Items"),
("Metal & Metal Items"),
("Paper"),
("Plastic"),
("Vehicles & Vehicle-Related"),
("Wood"),
("Yard Waste");

-- ============================ HOUSEHOLD ITEMS ============================

CREATE TABLE householdItems (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  householdItems_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);

INSERT INTO householdItems (householdItems_categories, categoryId) 
VALUES ("Appliances", 1),
("Batteries", 1),
("Bathroom & Laundry", 1),
("Bedroom", 1),
("Garage & Outdoor", 1),
("Kitchen", 1),
("Lights & Bulbs", 1),
("Misc. Household", 1);

SELECT * FROM categories;
SELECT * FROM householdItems;

SELECT householdItems_categories, categoryName
FROM householdItems
INNER JOIN categories ON householdItems.categoryId = categories.id;

SELECT householdItems_categories, categoryName
FROM householdItems
LEFT JOIN categories ON householdItems.categoryId = categories.id;

SELECT householdItems_categories, categoryName
FROM householdItems
RIGHT JOIN categories ON householdItems.categoryId = categories.id;


-- ============================ CONSTRUCTION AND DEMOLITION ============================


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

SELECT constructionAndDemolition_categories, categoryName
FROM constructionAndDemolition
INNER JOIN categories ON constructionAndDemolition.categoryId = categories.id;


SELECT constructionAndDemolition_categories, categoryName
FROM constructionAndDemolition
LEFT JOIN categories ON constructionAndDemolition.categoryId = categories.id;

SELECT constructionAndDemolition_categories, categoryName
FROM constructionAndDemolition
RIGHT JOIN categories ON constructionAndDemolition.categoryId = categories.id;


-- ============================ ELECTRONICS ============================
CREATE TABLE electronics (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  electronics_categories VARCHAR(355) NOT NULL,
  Primary Key (id)
);



INSERT INTO electronics (electronics_categories, categoryId) 
VALUES 

("Batteries", 3),
("CDs, DVDs, or Floppies", 3),
("Cell Phones", 3),
("Clock Radios", 3),
("Computers or Laptops", 3),
("Computer Monitors", 3),
("Copiers or Fax Machines", 3),
("E-readers", 3),
("E-waste", 3),
("Landline Telephones", 3),
("Other Electronic Devices", 3),
("Toner or Printer Cartridgesatteries", 3),
("Printers or Peripherals", 3),
("Stereo or Audio Equipment", 3),
("Televisions", 3),
("VCRs", 3);


SELECT * FROM electronics;


SELECT electronics_categories, categoryName
FROM electronics
INNER JOIN categories ON electronics.categoryId = categories.id;


SELECT electronics_categories, categoryName
FROM electronics
LEFT JOIN categories ON electronics.categoryId = categories.id;

SELECT electronics_categories, categoryName
FROM electronics
RIGHT JOIN categories ON electronics.categoryId = categories.id;

-- ============================ FABRIC ============================
CREATE TABLE fabric (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  fabric_categories VARCHAR(355) NOT NULL,
  Primary Key (id)
);

INSERT INTO fabric (fabric_categories, categoryId) 
VALUES 

("Bedding or Linens", 4),
("Carpet or Padding", 4),
("Clothes or Shoes", 4),
("Dryer Sheets", 4),
("Fabric or Textiles", 4),
("Reusable Shopping Bags", 4)



SELECT * from categories;
SELECT * FROM fabric;

SELECT fabric_categories, categoryName
FROM fabric
INNER JOIN categories ON fabric.categoryId = categories.id;


SELECT fabric_categories, categoryName
FROM fabric
LEFT JOIN categories ON fabric.categoryId = categories.id;

SELECT fabric_categories, categoryName
FROM fabric
RIGHT JOIN categories ON fabric.categoryId = categories.id;

-- ============================ FOOD ============================

CREATE TABLE food (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  food_categories VARCHAR(555) NOT NULL,
  Primary Key (id)
);



INSERT INTO food (food_categories, categoryId) 
VALUES 

("Cooking Oil", 5),
("Fats, Oils, or Grease", 5),
("Food Scraps", 5),
("Pet Food", 5),
("Vitamins", 5)


SELECT * from categories;
SELECT * FROM food;

SELECT food_categories, categoryName
FROM food
INNER JOIN categories ON food.categoryId = categories.id;


SELECT food_categories, categoryName
FROM food
LEFT JOIN categories ON food.categoryId = categories.id;

SELECT food_categories, categoryName
FROM food
RIGHT JOIN categories ON food.categoryId = categories.id;