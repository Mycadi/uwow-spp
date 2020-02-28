
-- ----------------------------
-- Table structure for character_deathmatch_store
-- ----------------------------
DROP TABLE IF EXISTS `character_deathmatch_store`;
CREATE TABLE `character_deathmatch_store` (
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `total_kills` int(11) NOT NULL DEFAULT '0',
  `selected_morph` int(11) NOT NULL DEFAULT '0',
  `buyed_morphs` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `character_deathmatch`
DROP COLUMN `total_kills`;

