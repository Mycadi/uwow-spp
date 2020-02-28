DROP TABLE IF EXISTS `character_dungeon_affixes`;
CREATE TABLE `character_dungeon_affixes` (
  `Affix` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Affix1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Affix2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Affix`,`Affix1`,`Affix2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='mythic+ affixes';

ALTER TABLE `item_instance`
ADD COLUMN `challengeMapID`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `bonusListIDs`,
ADD COLUMN `challengeLevel`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `challengeMapID`,
ADD COLUMN `challengeAffix`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `challengeLevel`,
ADD COLUMN `challengeAffix1`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `challengeAffix`,
ADD COLUMN `challengeAffix2`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `challengeAffix1`,
ADD COLUMN `challengeKeyIsCharded`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `challengeAffix2`;
