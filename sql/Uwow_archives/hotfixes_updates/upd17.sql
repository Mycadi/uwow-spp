DROP TABLE IF EXISTS `battle_pet_ability`;
CREATE TABLE `battle_pet_ability` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IconFileID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `AuraAbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `School` tinyint(4) NOT NULL DEFAULT '0',
  `Cooldown` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AuraDuration` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_ability_locale`;
CREATE TABLE `battle_pet_ability_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_ability_effect`;
CREATE TABLE `battle_pet_ability_effect` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TurnID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AuraID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PropertyValue1` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue2` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue3` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue4` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue5` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue6` smallint(6) NOT NULL DEFAULT '0',
  `EffectPropertiesID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Effect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_ability_turn`;
CREATE TABLE `battle_pet_ability_turn` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AbilityID` int(10) unsigned NOT NULL DEFAULT '0',
  `StateID` int(10) unsigned NOT NULL DEFAULT '0',
  `Turn` int(10) unsigned NOT NULL DEFAULT '0',
  `HasProcType` int(10) unsigned NOT NULL DEFAULT '0',
  `ProcType` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_ability_state`;
CREATE TABLE `battle_pet_ability_state` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(11) NOT NULL DEFAULT '0',
  `AbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `State` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_species_x_ability`;
CREATE TABLE `battle_pet_species_x_ability` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpeciesID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_breed_quality`;
CREATE TABLE `battle_pet_breed_quality` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Modifier` float NOT NULL DEFAULT '0',
  `Quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
