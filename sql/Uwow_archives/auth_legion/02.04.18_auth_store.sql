ALTER TABLE `store_product_locales`
ADD COLUMN `type`  smallint(10) NOT NULL DEFAULT 0 AFTER `product`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`product`, `type`);

ALTER TABLE `store_categories`
MODIFY COLUMN `type`  smallint(10) NOT NULL DEFAULT 0 AFTER `pid`;