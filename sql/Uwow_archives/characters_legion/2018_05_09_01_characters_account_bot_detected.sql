DROP TABLE IF EXISTS `account_bot_detected`;

CREATE TABLE `account_bot_detected` (
  `accountId` int(11) unsigned NOT NULL,
  `playerName` varchar(12) NOT NULL DEFAULT '',
  `botName` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`accountId`, `playerName`, `botName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
