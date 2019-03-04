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