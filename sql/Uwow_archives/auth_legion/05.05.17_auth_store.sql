ALTER TABLE `store_category_realms`
ADD COLUMN `return`  tinyint UNSIGNED NOT NULL DEFAULT 0 AFTER `realm`;