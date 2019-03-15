DROP DATABASE IF EXISTS where_does_it_go;
CREATE DATABASE where_does_it_go;
USE where_does_it_go;


CREATE TABLE category(
   categoryId INTEGER  NOT NULL PRIMARY KEY, 
   category   VARCHAR(26) NOT NULL
);

CREATE TABLE subCategory(
   categoryId    INTEGER,
   subcategoryId INTEGER,
   subCategory   VARCHAR(33),
   PRIMARY KEY (categoryId, subcategoryId)
);


CREATE TABLE itemDetail(
   categoryId                INTEGER  NOT NULL,
   subcategoryId             INTEGER  NOT NULL,
   itemId                    INTEGER  NOT NULL,
   item                      VARCHAR(39),
   donateAndReuse            VARCHAR(258),
   curbSidePickup            VARCHAR(193),
   transferStation           VARCHAR(260),
   inGarbage                 VARCHAR(327),
   reuse                     VARCHAR(120),
   dropOffLocations          VARCHAR(398),
   hazWasteFacility          VARCHAR(202),
   hazNoCharge               VARCHAR(316),
   donate                    VARCHAR(266),
   warning                   VARCHAR(66),
   caution                   VARCHAR(160),
   inRecycling               VARCHAR(312),
   didYouKnow                VARCHAR(262),
   inFoodAndYardWaste        VARCHAR(343),
   inRecyclingRinseFirst     VARCHAR(541),
   nextToBinNoCharge         VARCHAR(194),
   corporateTakeBackPrograms VARCHAR(79),
   pickup                    VARCHAR(110),
   hazardous                 VARCHAR(816),
   nextToBin                 VARCHAR(642),
   recycleNextToBinNoCharge  VARCHAR(409),
   PRIMARY KEY (categoryId, subcategoryId, itemId)
);

-- CATEGORY AND SUBCATEGORY CONNECTION
-- left joing because all results have a category
-- left join means only display subcategories that have a matching catgeory id
SELECT * FROM category
LEFT JOIN subCategory
on category.categoryId = subCategory.categoryId;

-- SUBCATEGORY AND ITEM CONNECTION

SELECT * from subCategory
LEFT JOIN itemDetail
on subCategory.categoryId + subCategory.subCategoryId = itemDetail.categoryId + subCategory.subCategoryId;
