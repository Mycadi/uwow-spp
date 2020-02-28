ALTER TABLE `store_history`
ADD COLUMN `guild_name`  varchar(255) NOT NULL DEFAULT '' AFTER `art_level`;