DROP TABLE IF EXISTS `store_donate_service`;
CREATE TABLE `store_donate_service` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `realm` int(11) unsigned NOT NULL,
  `account` int(11) NOT NULL DEFAULT '0',
  `bnet_account` int(11) NOT NULL DEFAULT '0',
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `service` varchar(50) NOT NULL DEFAULT '',
  `cost` int(11) NOT NULL DEFAULT '0',
  `targetguid` int(11) NOT NULL DEFAULT '0',
  `dt_buy` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
