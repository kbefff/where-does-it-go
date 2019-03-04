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