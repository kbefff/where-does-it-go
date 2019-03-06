DROP DATABASE IF EXISTS where_does_it_go;
CREATE DATABASE where_does_it_go;
USE where_does_it_go;


CREATE TABLE category(
   categoryId INTEGER  NOT NULL 
  ,category   VARCHAR(26) NOT NULL
);

INSERT INTO category(categoryId,category) VALUES (1,'Household Items');
INSERT INTO category(categoryId,category) VALUES (2,'Construction & Demolition');
INSERT INTO category(categoryId,category) VALUES (3,'Elecronics');
INSERT INTO category(categoryId,category) VALUES (4,'Fabric');
INSERT INTO category(categoryId,category) VALUES (5,'Food');
INSERT INTO category(categoryId,category) VALUES (6,'Food Packaging');
INSERT INTO category(categoryId,category) VALUES (7,'Glass & Ceramics');
INSERT INTO category(categoryId,category) VALUES (8,'Hazardous Items');
INSERT INTO category(categoryId,category) VALUES (9,'Metal & Metal Items');
INSERT INTO category(categoryId,category) VALUES (10,'Paper');
INSERT INTO category(categoryId,category) VALUES (11,'Plastic');
INSERT INTO category(categoryId,category) VALUES (12,'Vehicles & Vehicle-Related');
INSERT INTO category(categoryId,category) VALUES (13,'Wood');
INSERT INTO category(categoryId,category) VALUES (14,'Yard Waste');
