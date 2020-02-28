CREATE TABLE `world_map_difficulty_stats` (
  `mapId` int(11) NOT NULL DEFAULT '-1',
  `difficultyId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dmg_multiplier` float unsigned NOT NULL DEFAULT '1',
  `comment` text,
  PRIMARY KEY (`MapId`, `difficultyId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;