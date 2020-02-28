DROP TABLE IF EXISTS `w_m_o_area_table`;
CREATE TABLE `w_m_o_area_table` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `WMOGroupID` int(11) NOT NULL DEFAULT '0',
  `AreaName` text,
  `WMOID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AmbienceID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ZoneMusic` smallint(5) unsigned NOT NULL DEFAULT '0',
  `IntroSound` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaTableID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UWIntroSound` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UWAmbience` smallint(5) unsigned NOT NULL DEFAULT '0',
  `NameSet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SoundProviderPref` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SoundProviderPrefUnderwater` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UWZoneMusic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `w_m_o_area_table_locale`;
CREATE TABLE `w_m_o_area_table_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `AreaName_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `world_safe_locs`;
CREATE TABLE `world_safe_locs` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LocX` float NOT NULL DEFAULT '0',
  `LocY` float NOT NULL DEFAULT '0',
  `LocZ` float NOT NULL DEFAULT '0',
  `LocO` float NOT NULL DEFAULT '0',
  `AreaName` text,
  `MapID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `world_safe_locs_locale`;
CREATE TABLE `world_safe_locs_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `AreaName_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
