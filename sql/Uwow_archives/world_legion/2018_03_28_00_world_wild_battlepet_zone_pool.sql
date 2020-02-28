ALTER TABLE `wild_battlepet_zone_pool`   
  DROP COLUMN `Breed0`, 
  DROP COLUMN `Breed1`, 
  DROP COLUMN `Breed2`, 
  DROP COLUMN `Breed3`, 
  DROP COLUMN `Breed4`, 
  DROP COLUMN `Breed5`, 
  DROP COLUMN `Breed6`, 
  DROP COLUMN `Breed7`, 
  DROP COLUMN `Breed8`, 
  DROP COLUMN `Breed9`, 
  ADD COLUMN `Creature` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `MaxLevel`;

ALTER TABLE `wild_battlepet_zone_pool`   
  CHANGE `Replace` `BattlePetEntry` INT(10) UNSIGNED NOT NULL,
  CHANGE `Creature` `CreatureEntry` INT(10) UNSIGNED DEFAULT 0 NOT NULL;

DROP TABLE `battle_pet_wild_pool`;
DROP TABLE `battle_pet_item_to_species`;
DROP TABLE `battle_pet_breed`;
DROP TABLE `battle_pet_breed2species`;
DROP TABLE `battle_pet_quality`;

CREATE TABLE `battlepet_info` (
  `NpcID` int(10) unsigned NOT NULL,
  `Specie` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlevel` int(10) unsigned NOT NULL DEFAULT '0',
  `minlevel` int(10) unsigned NOT NULL DEFAULT '0',
  `minquality` int(10) unsigned NOT NULL DEFAULT '0',
  `breadsMask` int(10) unsigned NOT NULL DEFAULT '0',
  `Ability1` int(10) unsigned NOT NULL DEFAULT '0',
  `Ability2` int(10) unsigned NOT NULL DEFAULT '0',
  `Ability3` int(10) unsigned NOT NULL DEFAULT '0',
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NpcID`,`Specie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
