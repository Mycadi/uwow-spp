DROP TABLE IF EXISTS `account_item_favorite_appearances`;
CREATE TABLE `account_item_favorite_appearances` (
  `battlenetAccountId` int(10) unsigned NOT NULL,
  `itemModifiedAppearanceId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`battlenetAccountId`,`itemModifiedAppearanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
