ALTER TABLE `store_category_realms`
ADD COLUMN `enable`  tinyint(1) UNSIGNED NOT NULL DEFAULT 1 AFTER `realm`;
ALTER TABLE `store_product_realms`
ADD COLUMN `enable`  tinyint(1) UNSIGNED NOT NULL DEFAULT 1 AFTER `realm`;