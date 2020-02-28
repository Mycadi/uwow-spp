DROP TABLE IF EXISTS `character_deathmatch`;
CREATE TABLE `character_deathmatch` (
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `kills` int(11) NOT NULL DEFAULT '0',
  `deaths` int(11) NOT NULL DEFAULT '0',
  `damage` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `matches` int(11) NOT NULL DEFAULT '0',
  `total_kills` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE INDEX guid ON character_deathmatch (guid);

ALTER TABLE `character_deathmatch`
MODIFY COLUMN `damage`  bigint(20) NOT NULL DEFAULT 0 AFTER `deaths`;
