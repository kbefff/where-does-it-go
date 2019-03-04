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