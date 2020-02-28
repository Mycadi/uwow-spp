--
-- Table structure for table `artifact_power_picker`
--
DROP TABLE IF EXISTS `artifact_power_picker`;
CREATE TABLE `artifact_power_picker` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

 DROP TABLE IF EXISTS `journal_encounter_item`;
 CREATE TABLE `journal_encounter_item` (
   `ItemID` int(10) unsigned NOT NULL DEFAULT '0',
   `EncounterID` smallint(5) unsigned NOT NULL DEFAULT '0',
   `Unk` tinyint(3) unsigned NOT NULL DEFAULT '0',
   `Unk2` tinyint(3) unsigned NOT NULL DEFAULT '0',
   `Unk3` tinyint(3) unsigned NOT NULL DEFAULT '0',
   `ID` int(10) unsigned NOT NULL DEFAULT '0',
   `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ID`)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 
  DROP TABLE IF EXISTS `journal_encounter`;
 CREATE TABLE `journal_encounter` (
   `ID` int(10) unsigned NOT NULL DEFAULT '0',
   `UnkFloat` float NOT NULL DEFAULT '0',
   `UnkFloat2` float NOT NULL DEFAULT '0',
   `Name` text,
   `Description` text,
   `UnkShort` smallint(5) unsigned NOT NULL DEFAULT '0',
   `UnkShort2` smallint(5) unsigned NOT NULL DEFAULT '0',
   `UnkShort3` smallint(5) unsigned NOT NULL DEFAULT '0',
   `JournalInstanceID` smallint(5) unsigned NOT NULL DEFAULT '0',
   `UnkByte` tinyint(3) unsigned NOT NULL DEFAULT '0',
   `UnkByte2` tinyint(3) unsigned NOT NULL DEFAULT '0',
   `UnkInt` int(10) unsigned NOT NULL DEFAULT '0',
   `UnkInt2` int(10) unsigned NOT NULL DEFAULT '0',
   `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ID`)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 
DROP TABLE IF EXISTS `spell_effect_group_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_effect_group_size` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellEffectID` int(10) unsigned NOT NULL DEFAULT '0',
  `Coefficient` float NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 