ALTER TABLE `item_instance_artifact`   
  ADD COLUMN `tier` INT(10) DEFAULT 0 NOT NULL AFTER `itemEntry`;
