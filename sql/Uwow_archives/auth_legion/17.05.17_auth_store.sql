ALTER TABLE `store_history`
ADD COLUMN `art_level`  varchar(255) NOT NULL DEFAULT '' AFTER `char_level`;


ALTER TABLE `store_level_prices`
ADD COLUMN `type`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 FIRST ;