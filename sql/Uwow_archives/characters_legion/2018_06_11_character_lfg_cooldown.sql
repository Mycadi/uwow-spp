CREATE TABLE `character_lfg_cooldown`(  
  `guid` INT(10) NOT NULL DEFAULT 0,
  `dungeonId` INT(10) NOT NULL DEFAULT 0,
  `respawnTime` INT(10) DEFAULT 0,
  PRIMARY KEY (`guid`, `dungeonId`)
);
