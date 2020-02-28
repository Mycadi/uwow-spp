DROP TABLE IF EXISTS `minor_talent`;
DROP TABLE IF EXISTS `item_to_battle_pet_species`;

DROP TABLE IF EXISTS `battle_pet_effect_properties`;
CREATE TABLE `battle_pet_effect_properties` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Description1` text,
  `Description2` text,
  `Description3` text,
  `Description4` text,
  `Description5` text,
  `Description6` text,
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_effect_properties_locale`;
CREATE TABLE `battle_pet_effect_properties_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Description1_lang` text,
  `Description2_lang` text,
  `Description3_lang` text,
  `Description4_lang` text,
  `Description5_lang` text,
  `Description6_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_ability_turn`;
CREATE TABLE `battle_pet_ability_turn` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `StateID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Turn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HasProcType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ProcType` tinyint(4) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
