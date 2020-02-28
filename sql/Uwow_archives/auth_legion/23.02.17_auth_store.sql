ALTER TABLE `store_product_realms`
ADD COLUMN `token`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `realm`,
ADD COLUMN `karma`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `token`;
ALTER TABLE `store_products`
DROP COLUMN `token`,
DROP COLUMN `karma`;
DROP TABLE store_price_realms;