ALTER TABLE `world_seamless_teleport`   
  ADD COLUMN `AreaID` MEDIUMINT(6) DEFAULT 0 NOT NULL AFTER `ZoneID`, 
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`ZoneID`, `AreaID`, `FromMapID`, `ToMapID`);
