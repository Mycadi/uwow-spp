ALTER TABLE `account_ip_access`
ADD COLUMN `min`  varchar(15) NOT NULL DEFAULT '' AFTER `ip`,
ADD COLUMN `max`  varchar(15) NOT NULL DEFAULT '' AFTER `min`;