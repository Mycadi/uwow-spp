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
  `Minimum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `StartPower` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VisualPerOne` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `spell_visual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_visual` (
  `m_precastKit` int(10) unsigned NOT NULL DEFAULT '0',
  `m_castKit` int(10) unsigned NOT NULL DEFAULT '0',
  `m_impactKit` int(10) unsigned NOT NULL DEFAULT '0',
  `m_stateKit` int(10) unsigned NOT NULL DEFAULT '0',
  `m_stateDoneKit` int(10) unsigned NOT NULL DEFAULT '0',
  `m_channelKit` int(10) unsigned NOT NULL DEFAULT '0',
  `m_hasMissile` int(10) unsigned NOT NULL DEFAULT '0',
  `m_missileDestinationAttachment` int(10) unsigned NOT NULL DEFAULT '0',
  `m_missileSound` int(10) unsigned NOT NULL DEFAULT '0',
  `m_animEventSoundID` int(10) unsigned NOT NULL DEFAULT '0',
  `m_casterImpactKit` int(10) unsigned NOT NULL DEFAULT '0',
  `m_targetImpactKit` int(10) unsigned NOT NULL DEFAULT '0',
  `m_missileAttachment` int(10) unsigned NOT NULL DEFAULT '0',
  `m_missileFollowGroundHeight` int(10) unsigned NOT NULL DEFAULT '0',
  `m_missileFollowGroundDropSpeed` int(10) unsigned NOT NULL DEFAULT '0',
  `m_missileCastOffsetX` float NOT NULL DEFAULT '0',
  `m_missileCastOffsetY` float NOT NULL DEFAULT '0',
  `m_missileCastOffsetZ` float NOT NULL DEFAULT '0',
  `m_missileImpactOffsetX` float NOT NULL DEFAULT '0',
  `m_missileImpactOffsetY` float NOT NULL DEFAULT '0',
  `m_missileImpactOffsetZ` float NOT NULL DEFAULT '0',
  `field27` int(10) unsigned NOT NULL DEFAULT '0',
  `field28` int(10) unsigned NOT NULL DEFAULT '0',
  `m_persistentAreaKit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field26` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field29` smallint(5) unsigned NOT NULL DEFAULT '0',
  `m_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_missileModel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `m_missilePathType` int(10) unsigned NOT NULL DEFAULT '0',
  `unk30` int(10) unsigned NOT NULL DEFAULT '0',
  `unk31` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;