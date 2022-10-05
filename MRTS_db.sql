DROP DATABASE IF EXISTS `mrts`;
CREATE DATABASE IF NOT EXISTS `mrts`; 
USE `mrts`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

-- --------------------------------------
--  TABLE AirplaneDesigns
-- --------------------------------------

CREATE TABLE `mrts_table` (
`Date` 		datetime,
`Retail - food services sales - total`  int,
`Retail sales - food services excl motor vehicle - parts`  int,
`Retail sales - food services excl gasoline stations`  int,
`Retail sales - food services excl mv - p - gs`  int,
`Retail sales - total`  int,
`Retail sales - total excl. motor vehicle - parts dealers`  int,
`GAFO1`  int,
`Motor vehicle - parts dealers`  int,
`Automobile - other motor vehicle dealers`  int,
`Automobile dealers`  int,
`New car dealers`  int,
`Used car dealers`  int,
`Automotive parts - acc. - - tire stores`  int,
`Furniture - home furn - electronics - - appliance stores`  int,
`Furniture - home furnishings stores`  int,
`Furniture stores`  int,
`Home furnishings stores`  int,
`Floor covering stores`  int,
`All other home furnishings stores`  int,
`Electronics - appliance stores`  int,
`Household appliance stores`  int,
`Electronics stores`  int,
`Building mat. - garden equip. - supplies dealers`  int,
`Building mat. - supplies dealers`  int,
`Paint - wallpaper stores`  int,
`Hardware stores`  int,
`Food - beverage stores`  int,
`Grocery stores`  int,
`Supermarkets - other grocery except convenience stores`  int,
`Beer - wine - - liquor stores`  int,
`Health - personal care stores`  int,
`Pharmacies - drug stores`  int,
`Gasoline stations`  int,
`Clothing - clothing access. stores`  int,
`Clothing stores`  int,
`Men clothing stores`  int,
`Women clothing stores`  int,
`Family clothing stores`  int,
`Other clothing stores`  int,
`Shoe stores`  int,
`Jewelry stores`  int,
`Sporting goods - hobby - musical instrument - - book stores`  int,
`Sporting goods stores`  int,
`Hobby - toy - - game stores`  int,
`Book stores`  int,
`General merch-ise stores`  int,
`Department stores`  int,
`Department storesexcl. discount department stores`  int,
`Discount dept. stores`  int,
`Other general merch-ise stores`  int,
`Warehouse clubs - superstores`  int,
`All other gen. merch-ise stores`  int,
`Miscellaneous store retailers`  int,
`Office supplies - stationery - - gift stores`  int,
`Office supplies - stationery stores`  int,
`Gift - novelty - - souvenir stores`  int,
`Used merch-ise stores`  int,
`Nonstore retailers`  int,
`Electronic shopping - mail-order houses`  int,
`Fuel dealers`  int,
`Food services - drinking places`  int,
`Drinking places`  int,
`Restaurants - other eating places`  int,
`Full service restaurants`  int,
`Limited service eating places`  int,
  	PRIMARY KEY (`Date`),	
	INDEX `Date` (`Date` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;




