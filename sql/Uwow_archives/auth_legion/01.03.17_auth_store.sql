ALTER TABLE `store_product_realms`
ADD COLUMN `return`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 AFTER `karma`;
ALTER TABLE `store_history`
ADD COLUMN `dt_return`  timestamp NULL DEFAULT NULL AFTER `dt_buy`;