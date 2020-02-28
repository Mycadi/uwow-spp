
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for character_deathmatch_products
-- ----------------------------
DROP TABLE IF EXISTS `character_deathmatch_products`;
CREATE TABLE `character_deathmatch_products` (
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `product` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  PRIMARY KEY (`product`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
