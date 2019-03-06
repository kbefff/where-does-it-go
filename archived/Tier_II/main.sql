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
  electronics_categories VARCHAR(255) NOT NULL,
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
  fabric_categories VARCHAR(255) NOT NULL,
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
  food_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);



INSERT INTO food (food_categories, categoryId) 
VALUES 

("Cooking Oil", 5),
("Fats, Oils, or Grease", 5),
("Food Scraps", 5),
("Pet Food", 5),
("Vitamins", 5);


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

-- ============================ FOOD PACKAGING============================
CREATE TABLE foodPackaging (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  foodPackaging_categories VARCHAR(255) NOT NULL,
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

-- ============================ GLASS AND CERAMICS ============================
CREATE TABLE glassAndCeramics (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  glassAndCeramics_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);



INSERT INTO glassAndCeramics (glassAndCeramics_categories, categoryId) 
VALUES 

("Glass & Ceramics", 7),
("Auto Glass", 7),
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
("Mirrors", 7),
("Mugs, Plates, or Bowls", 7),
("Window or Picture Glass", 7);



SELECT * from categories;
SELECT * FROM glassAndCeramics;

SELECT glassAndCeramics_categories, categoryName
FROM glassAndCeramics
INNER JOIN categories ON glassAndCeramics.categoryId = categories.id;


SELECT glassAndCeramics_categories, categoryName
FROM glassAndCeramics
LEFT JOIN categories ON glassAndCeramics.categoryId = categories.id;

SELECT glassAndCeramics_categories, categoryName
FROM glassAndCeramics
RIGHT JOIN categories ON glassAndCeramics.categoryId = categories.id;

-- ============================ HAZARDOUS ITEMS ============================
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

-- ============================ METAL & METAL ITEMS ============================

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


-- ============================ PAPER ============================
CREATE TABLE paper (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  paper_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);


INSERT INTO paper (paper_categories, categoryId) 
VALUES 

("Cardboard", 10),
("Containers / Boxes / Cartons", 10),
("Food-soiled Paper", 10),
("Misc. Paper", 10),
("Paper, Printed / Reading", 10);


SELECT * from categories;
SELECT * FROM paper;

SELECT paper_categories, categoryName
FROM paper
INNER JOIN categories ON paper.categoryId = categories.id;


SELECT paper_categories, categoryName
FROM paper
LEFT JOIN categories ON paper.categoryId = categories.id;

SELECT paper_categories, categoryName
FROM paper
RIGHT JOIN categories ON paper.categoryId = categories.id;

-- ============================ PLASTIC ============================
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

-- ============================ VEHICLES AND VEHICLE RELATED ============================

CREATE TABLE vehiclesAndVehicleRelated (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  vehiclesAndVehicleRelated_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);


INSERT INTO vehiclesAndVehicleRelated (vehiclesAndVehicleRelated_categories, categoryId) 
VALUES 

("Antifreeze", 12),
("Auto Glass", 12),
("Bicycles or Bike Parts", 12),
("Brake or Transmission Fluid", 12),
("Car Batteries", 12),
("Child Car Seats", 12),
("Engines, Motors or Car Parts", 12),
("Flares", 12),
("Gas Cans", 12),
("Gasoline", 12),
("Lawn Mowers or Power Equipment", 12),
("License Plates", 12),
("Motor Oil", 12),
("Motor Oil Containers", 12),
("Motor Oil Filters", 12),
("Other Vehicle Fluids", 12),
("Tires", 12),
("Vehicles", 12),
("Starters, Carburetors, Etc.", 12);



SELECT * from categories;
SELECT * FROM vehiclesAndVehicleRelated;

SELECT vehiclesAndVehicleRelated_categories, categoryName
FROM vehiclesAndVehicleRelated
INNER JOIN categories ON vehiclesAndVehicleRelated.categoryId = categories.id;


SELECT vehiclesAndVehicleRelated_categories, categoryName
FROM vehiclesAndVehicleRelated
LEFT JOIN categories ON vehiclesAndVehicleRelated.categoryId = categories.id;

SELECT vehiclesAndVehicleRelated_categories, categoryName
FROM vehiclesAndVehicleRelated
RIGHT JOIN categories ON vehiclesAndVehicleRelated.categoryId = categories.id;

-- ============================ WOOD ============================
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
-- ============================ YARD WASTE ============================
CREATE TABLE yardWaste (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  yardWaste_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);


INSERT INTO yardWaste (yardWaste_categories, categoryId) 
VALUES 

("Christmas Trees", 14),
("Contaminated Dirt or Soil", 14),
("Dirt or Soil", 14),
("Grass Clippings or Sod", 14),
("House Plants", 14),
("Leaves or Non-Woody Yard Waste", 14),
("Pet Waste or Litter", 14),
("Plant or Tree Salvage", 14),
("Plant Pots", 14),
("Rocks or Gravel", 14),
("Trees or Brush", 14),
("Wood Scraps, Shavings, or Sawdust", 14),
("Noxious Weeds", 14);



SELECT * from categories;
SELECT * FROM yardWaste;

SELECT yardWaste_categories, categoryName
FROM yardWaste
INNER JOIN categories ON yardWaste.categoryId = categories.id;


SELECT yardWaste_categories, categoryName
FROM yardWaste
LEFT JOIN categories ON yardWaste.categoryId = categories.id;

SELECT yardWaste_categories, categoryName
FROM yardWaste
RIGHT JOIN categories ON yardWaste.categoryId = categories.id;