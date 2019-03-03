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
("VCRs", 3)



SELECT * from categories;
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