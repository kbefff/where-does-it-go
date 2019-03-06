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