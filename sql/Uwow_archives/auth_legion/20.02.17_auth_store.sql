ALTER TABLE `store_product_realms`
ADD COLUMN `token`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `realm`,
ADD COLUMN `karma`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `token`;