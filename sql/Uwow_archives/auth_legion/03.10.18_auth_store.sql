ALTER TABLE `store_products`
ADD COLUMN `faction`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 AFTER `dt`;

