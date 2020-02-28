
DROP TABLE IF EXISTS `power_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `power_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `NameCost` text,
  `RegenOutCOmbat` float NOT NULL DEFAULT '0',
  `RegenInCOmbat` float NOT NULL DEFAULT '0',
  `MaxPower` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TimerRegen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PowerID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk9` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk10` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `StartPower` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VisualPerOne` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `power_type_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `power_type_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `NameCost_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE `taxi_nodes`
CHANGE COLUMN `ConditionID` `PlayerConditionID` smallint(5) unsigned NOT NULL DEFAULT '0' AFTER `MapID`;

DROP TABLE IF EXISTS `transmog_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transmog_set` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk1` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `transmog_set_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transmog_set_item` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TransmogSetID` int(10) unsigned NOT NULL DEFAULT '0',
  `AppearanceID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk3` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

