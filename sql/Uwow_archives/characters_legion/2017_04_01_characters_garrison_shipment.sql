ALTER TABLE `character_garrison_shipment` 
    ADD `start` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `shipmentID`,
    ADD `end` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `start`;
ALTER TABLE `character_garrison_shipment` DROP `orderTime`;