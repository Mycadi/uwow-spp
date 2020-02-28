DROP TABLE IF EXISTS `report_complaints`;
CREATE TABLE `report_complaints` (
  `ID` bigint(20) unsigned NOT NULL COMMENT 'Identifier',
  `PlayerGuid` bigint(20) unsigned NOT NULL,
  `ComplaintType` smallint(3) unsigned NOT NULL DEFAULT '0',
  `MailID` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeSinceOffence` int(10) unsigned NOT NULL DEFAULT '0',
  `MessageLog` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Spam report system';

DROP TABLE IF EXISTS `report_bugreport`;
CREATE TABLE `report_bugreport` (
  `ID` bigint(20) unsigned NOT NULL COMMENT 'Identifier',
  `PlayerGuid` bigint(20) unsigned NOT NULL,
  `Note` longtext NOT NULL,
  `MapID` smallint(5) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bug report system';
