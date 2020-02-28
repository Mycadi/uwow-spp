DROP TABLE IF EXISTS `creature_display_info`;
CREATE TABLE `creature_display_info` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtendedDisplayInfoID` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureModelScale` float NOT NULL DEFAULT '0',
  `PlayerModelScale` float NOT NULL DEFAULT '0',
  `TextureVariation1` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureVariation2` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureVariation3` int(10) unsigned NOT NULL DEFAULT '0',
  `PortraitTextureName` text,
  `PortraitCreatureDisplayInfoID` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureGeosetData` int(10) unsigned NOT NULL DEFAULT '0',
  `StateSpellVisualKitID` int(11) NOT NULL DEFAULT '0',
  `InstanceOtherPlayerPetScale` float NOT NULL DEFAULT '0',
  `ModelID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SoundID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `NPCSoundID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ParticleColorID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ObjectEffectPackageID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AnimReplacementSetID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CreatureModelAlpha` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SizeClass` tinyint(4) NOT NULL DEFAULT '0',
  `BloodID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Gender` tinyint(4) NOT NULL DEFAULT '0',
  `Unknown8` tinyint(4) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `creature_display_info_locale`;
CREATE TABLE `creature_display_info_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `PortraitTextureName_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `creature_display_info_extra`;
CREATE TABLE `creature_display_info_extra` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `HDFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `DisplayRaceID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DisplaySexID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DisplayClassID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SkinID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `FaceID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HairStyleID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HairColorID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `FacialHairID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CustomDisplayOption1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CustomDisplayOption2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CustomDisplayOption3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
