--
-- Table structure for table `criteria`
--

DROP TABLE IF EXISTS `criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criteria` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Asset` int(11) NOT NULL DEFAULT '0',
  `StartAsset` int(10) unsigned NOT NULL DEFAULT '0',
  `FailAsset` int(10) unsigned NOT NULL DEFAULT '0',
  `StartTimer` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ModifyTree` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `StartEvent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `FailEvent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EligibilityWorldStateID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EligibilityWorldStateValue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criteria`
--

LOCK TABLES `criteria` WRITE;
/*!40000 ALTER TABLE `criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criteria_tree`
--

DROP TABLE IF EXISTS `criteria_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criteria_tree` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Amount` int(10) unsigned NOT NULL DEFAULT '0',
  `Description` text,
  `CriteriaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(6) NOT NULL DEFAULT '0',
  `OrderIndex` smallint(6) NOT NULL DEFAULT '0',
  `Operator` tinyint(4) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criteria_tree`
--

LOCK TABLES `criteria_tree` WRITE;
/*!40000 ALTER TABLE `criteria_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `criteria_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criteria_tree_locale`
--

DROP TABLE IF EXISTS `criteria_tree_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criteria_tree_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criteria_tree_locale`
--

LOCK TABLES `criteria_tree_locale` WRITE;
/*!40000 ALTER TABLE `criteria_tree_locale` DISABLE KEYS */;
/*!40000 ALTER TABLE `criteria_tree_locale` ENABLE KEYS */;
UNLOCK TABLES;
