DROP TABLE IF EXISTS `banned_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banned_addons` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NameMD5` text,
  `VersionMD5` text,
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `banned_addons_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banned_addons_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `NameMD5_lang` text,
  `VersionMD5_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `glyph_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glyph_slot` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TypeFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

update map_difficulty set RaidDuration = 2 where RaidDuration > 0;
ALTER TABLE `map_difficulty`   
  CHANGE `MapID` `MapID` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `RaidDuration` `RaidDuration` TINYINT(3) UNSIGNED DEFAULT 0  NOT NULL  AFTER `DifficultyID`;

DROP TABLE IF EXISTS `map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Directory` text,
  `Flags1` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags2` int(10) unsigned NOT NULL DEFAULT '0',
  `MinimapIconScale` float NOT NULL DEFAULT '0',
  `CorpsePosX` float NOT NULL DEFAULT '0',
  `CorpsePosY` float NOT NULL DEFAULT '0',
  `MapName` text,
  `MapDescription0` text,
  `MapDescription1` text,
  `AreaTableID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LoadingScreenID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CorpseMapID` smallint(6) NOT NULL DEFAULT '0',
  `TimeOfDayOverride` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ParentMapID` smallint(6) NOT NULL DEFAULT '0',
  `CosmeticParentMapID` smallint(6) NOT NULL DEFAULT '0',
  `InstanceType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MapType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ExpansionID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TimeOffset` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `item_random_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_random_properties` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Enchantment1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Enchantment2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Enchantment3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Enchantment4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Enchantment5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `item_random_suffix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_random_suffix` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `IternalName` text,
  `Enchantment1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Enchantment2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Enchantment3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Enchantment4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Enchantment5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AllocationPct1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AllocationPct2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AllocationPct3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AllocationPct4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AllocationPct5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holidays` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Date1` int(10) unsigned NOT NULL DEFAULT '0',
  `Date2` int(10) unsigned NOT NULL DEFAULT '0',
  `Date3` int(10) unsigned NOT NULL DEFAULT '0',
  `Date4` int(10) unsigned NOT NULL DEFAULT '0',
  `Date5` int(10) unsigned NOT NULL DEFAULT '0',
  `Date6` int(10) unsigned NOT NULL DEFAULT '0',
  `Date7` int(10) unsigned NOT NULL DEFAULT '0',
  `Date8` int(10) unsigned NOT NULL DEFAULT '0',
  `Date9` int(10) unsigned NOT NULL DEFAULT '0',
  `Date10` int(10) unsigned NOT NULL DEFAULT '0',
  `Date11` int(10) unsigned NOT NULL DEFAULT '0',
  `Date12` int(10) unsigned NOT NULL DEFAULT '0',
  `Date13` int(10) unsigned NOT NULL DEFAULT '0',
  `Date14` int(10) unsigned NOT NULL DEFAULT '0',
  `Date15` int(10) unsigned NOT NULL DEFAULT '0',
  `Date16` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureFilename` text,
  `Duration1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration9` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration10` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Region` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Looping` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags7` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags8` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags9` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags10` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HolidayNameID` tinyint(4) NOT NULL DEFAULT '0',
  `HolidayDescriptionID` tinyint(4) NOT NULL DEFAULT '0',
  `Priority` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFilterType` tinyint(4) NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `quest_sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_sort` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SortName` text,
  `unk2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `char_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_shipment` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ShipmentConteinerID` int(10) unsigned NOT NULL DEFAULT '0',
  `CriteriaID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeForShipment` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellCreation` int(10) unsigned NOT NULL DEFAULT '0',
  `ShipmentResultItemID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `spell_scaling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_scaling` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `ScalesFromItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ScalingClass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxScalingLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `world_map_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `world_map_overlay` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureName` text,
  `MapAreaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TextureWidth` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TextureHeight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OffsetX` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OffsetY` smallint(5) unsigned NOT NULL DEFAULT '0',
  `HitRectTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `HitRectLeft` smallint(5) unsigned NOT NULL DEFAULT '0',
  `HitRectBottom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `HitRectRight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk16` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `glyph_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glyph_properties` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellId` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellIconID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TypeFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GlyphExclusiveCategoryID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

