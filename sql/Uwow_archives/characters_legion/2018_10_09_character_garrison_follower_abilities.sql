ALTER TABLE `character_garrison_follower_abilities`
ADD COLUMN `isItemTrait`  TINYINT(1) NOT NULL DEFAULT 0 AFTER `slot`;

ALTER IGNORE TABLE `character_garrison_follower_abilities`
DROP FOREIGN KEY `fk_foll_dbid`;

-- НЕ ДЛЯ ЛАЙВА, ТОЛЬКО ЛОКАЛЬНОЕ ЮЗАНИЕ
-- DROP TABLE IF EXISTS `character_garrison_follower_abilities`;
-- CREATE TABLE `character_garrison_follower_abilities` (
  -- `dbId` bigint(20) unsigned NOT NULL,
  -- `abilityId` int(10) unsigned NOT NULL,
  -- `GarrTypeId` int(10) unsigned NOT NULL,
  -- `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  -- `isItemTrait` tinyint(1) NOT NULL DEFAULT '0',
  -- PRIMARY KEY (`dbId`,`slot`,`GarrTypeId`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

RENAME TABLE character_garrison_follower_abilities TO character_garrison_follower_abilities_back;
CREATE TABLE character_garrison_follower_abilities LIKE character_garrison_follower_abilities_back;

ALTER IGNORE TABLE `character_garrison_follower_abilities`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`dbId`, `slot`, `GarrTypeId`);

INSERT IGNORE INTO character_garrison_follower_abilities SELECT * FROM character_garrison_follower_abilities_back;

