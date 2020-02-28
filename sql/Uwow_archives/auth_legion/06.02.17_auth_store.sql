ALTER TABLE `store_products`
DROP COLUMN `id`,
CHANGE COLUMN `product` `item`  int(11) NOT NULL DEFAULT 0 AFTER `category`,
ADD COLUMN `id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT FIRST ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`);

ALTER TABLE `store_products`
MODIFY COLUMN `id`  int(11) NOT NULL AUTO_INCREMENT FIRST ;

ALTER TABLE `store_products`
DROP INDEX `item_bonus` ,
ADD UNIQUE INDEX `unique` (`item`, `bonus`) USING BTREE ;

ALTER TABLE `store_favorites`
DROP INDEX `index` ,
ADD UNIQUE INDEX `unique` (`realm`, `product`, `acid`) USING BTREE ;

ALTER TABLE `store_category_realms`
DROP INDEX `category_realm` ,
ADD UNIQUE INDEX `unique` (`category`, `realm`) USING BTREE ;

ALTER TABLE `store_rating`
DROP INDEX `index` ,
ADD UNIQUE INDEX `unique` (`realm`, `product`, `acid`) USING BTREE ;

ALTER TABLE `store_level_prices`
DROP COLUMN `product`,
DROP INDEX `idx` ,
ADD UNIQUE INDEX `unique` (`realm`, `level`, `token`) USING BTREE ;

ALTER TABLE `store_product_realms`
DROP INDEX `index` ,
ADD UNIQUE INDEX `unique` (`realm`, `product`) USING BTREE ;

ALTER TABLE `store_statistics`
DROP INDEX `index` ,
ADD UNIQUE INDEX `unique` (`realm`, `product`) USING BTREE ;

UPDATE `store_product_realms` s_p_r
JOIN `store_products` s_p
ON `s_p`.`item` = `s_p_r`.`product`
SET `s_p_r`.`product` = `s_p`.`id`;

UPDATE `store_statistics` s_s
JOIN `store_products` s_p
ON `s_p`.`item` = `s_s`.`product`
SET `s_s`.`product` = `s_p`.`id`;

ALTER TABLE `store_statistics`
DROP COLUMN `return`;

ALTER TABLE `store_discounts`
ADD COLUMN `realm`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `id`,
ADD COLUMN `category`  int(11) NOT NULL DEFAULT 0 AFTER `realm`,
ADD COLUMN `product`  int(11) NOT NULL DEFAULT 0 AFTER `category`;

ALTER TABLE `store_history`
MODIFY COLUMN `char_level`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `char_guid`,
CHANGE COLUMN `product` `item`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `item_guid`,
ADD COLUMN `bonus`  varchar(11) NULL DEFAULT NULL AFTER `item`,
ADD COLUMN `product`  int(11) NOT NULL DEFAULT 0 AFTER `bonus`;

UPDATE `store_history` s_h
JOIN `store_products` s_p
ON `s_p`.`item` = `s_h`.`item`
SET `s_h`.`product` = `s_p`.`id`, `s_h`.`bonus` = `s_p`.`bonus`;