DROP DATABASE IF EXISTS where_does_it_go;
CREATE DATABASE where_does_it_go;
USE where_does_it_go;



-- MAIN CATEGORIES
CREATE TABLE categories (
  id INT AUTO_INCREMENT NOT NULL,
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

SELECT * from categories;


-- HOUSEHOLD ITEMS
CREATE TABLE householdItems (
  id INT AUTO_INCREMENT NOT NULL,
  householdItems_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);

INSERT INTO householdItems (householdItems_categories)
VALUES ("Appliances"),
("Batteries"),
("Bathroom & Laundry"),
("Bedroom"),
("Garage & Outdoor"),
("Kitchen"),
("Lights & Bulbs"),
("Misc. Household");

SELECT * from householdItems;