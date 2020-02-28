ALTER TABLE `store_product_locales`
ADD COLUMN `us`  varchar(255) NOT NULL DEFAULT '' AFTER `product`,
ADD COLUMN `gb`  varchar(255) NOT NULL DEFAULT '' AFTER `us`,
ADD COLUMN `kr`  varchar(255) NOT NULL DEFAULT '' AFTER `gb`,
ADD COLUMN `mx`  varchar(255) NOT NULL DEFAULT '' AFTER `es`,
ADD COLUMN `br`  varchar(255) NOT NULL DEFAULT '' AFTER `pt`;

ALTER TABLE `store_product_locales`
DROP COLUMN `en`,
DROP COLUMN `ko`,
DROP COLUMN `em`;

ALTER TABLE `store_category_locales`
ADD COLUMN `us`  varchar(255) NOT NULL DEFAULT '' AFTER `category`,
ADD COLUMN `gb`  varchar(255) NOT NULL DEFAULT '' AFTER `us`,
ADD COLUMN `kr`  varchar(255) NOT NULL DEFAULT '' AFTER `en`,
ADD COLUMN `mx`  varchar(255) NOT NULL DEFAULT '' AFTER `es`,
ADD COLUMN `br`  varchar(255) NOT NULL DEFAULT '' AFTER `pt`;

ALTER TABLE `store_category_locales`
DROP COLUMN `en`,
DROP COLUMN `ko`,
DROP COLUMN `em`;