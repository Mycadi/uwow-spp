ALTER TABLE `store_products`
ADD COLUMN `bonus`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `product`;

ALTER TABLE `store_products`
MODIFY COLUMN `bonus`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `product`;