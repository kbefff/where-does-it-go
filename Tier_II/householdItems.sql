-- source categories_to_householdItems.sql
DROP DATABASE IF EXISTS where_does_it_go;
CREATE DATABASE where_does_it_go;
USE where_does_it_go;

CREATE TABLE householdItems (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  categoryId INTEGER(11),
  householdItems_categories VARCHAR(255) NOT NULL,
  Primary Key (id)
);

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

INSERT INTO householdItems (householdItems_categories, categoryId) 
VALUES ("Appliances", 1),
("Batteries", 1),
("Bathroom & Laundry", 1),
("Bedroom", 1),
("Garage & Outdoor", 1),
("Kitchen", 1),
("Lights & Bulbs", 1),
("Misc. Household", 1);

SELECT * from categories;
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
