CREATE TABLE `world_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` smallint(5) unsigned NOT NULL DEFAULT '1',
  `expansion` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

-- Remove unused colum
ALTER TABLE `disenchant_loot_template` DROP COLUMN `shared`;
ALTER TABLE `fishing_loot_template` DROP COLUMN `shared`;
ALTER TABLE `gameobject_loot_template` DROP COLUMN `shared`;
ALTER TABLE `item_loot_template` DROP COLUMN `shared`;
ALTER TABLE `mail_loot_template` DROP COLUMN `shared`;
ALTER TABLE `milling_loot_template` DROP COLUMN `shared`;
ALTER TABLE `pickpocketing_loot_template` DROP COLUMN `shared`;
ALTER TABLE `prospecting_loot_template` DROP COLUMN `shared`;
ALTER TABLE `reference_loot_template` DROP COLUMN `shared`;
ALTER TABLE `skinning_loot_template` DROP COLUMN `shared`;
ALTER TABLE `spell_loot_template` DROP COLUMN `shared`;

-- Update Shared item
UPDATE creature_loot_template SET shared = 1 WHERE item IN (52078,71774,71775,71776,71777,71778,71779,71780,71781,71782,71783,71784,71785,71786,71787,71998,77207,77208,77209,77210,77211,77228,77229,77230,77231,77232,77979,77980,77981,77982,77983,77999,78000,78001,78002,78003,78489,78490,78491,78492,78493,78494,78495,78496,78497,78498,87208,87209,94295,94593,94594,95060,95061,95062,95063,95064,95065,95066,95067,95068,95069,95343,95498,95499,95500,95501,95502,95503,95504,95505,95506,95507,95516,95858,95859,95860,95861,95862,95863,95864,95865,95866,95867,95868,95869,95870,95871,95872,95873,95874,95875,95876,95877,95878,96230,96231,96232,96233,96234,96235,96236,96237,96238,96239,96240,96241,96242,96243,96244,96245,96246,96247,96248,96249,96250,96602,96603,96604,96605,96606,96607,96608,96609,96610,96611,96612,96613,96614,96615,96616,96617,96618,96619,96620,96621,96622,96974,96975,96976,96977,96978,96979,96980,96981,96982,96983,96984,96985,96986,96987,96988,96989,96990,96991,96992,96993,96994,97126,97127,97128,97129,97130);

-- Deleted, not need dublecate
delete from creature_loot_template where item in (87391,140220,140221,140222,140224,140225,140226,140227,142259,144330,144345,153248,153202);
delete from gameobject_loot_template where item in (87391,140220,140221,140222,140224,140225,140226,140227,142259,144330,144345,153248,153202);
delete from skinning_loot_template where item in (87391,140220,140221,140222,140224,140225,140226,140227,142259,144330,144345,153248,153202);
delete from disenchant_loot_template where item in (87391,140220,140221,140222,140224,140225,140226,140227,142259,144330,144345,153248,153202);
delete from spell_loot_template where item in (87391,140220,140221,140222,140224,140225,140226,140227,142259,144330,144345,153248,153202);
delete from item_loot_template where item in (87391,140220,140221,140222,140224,140225,140226,140227,142259,144330,144345,153248,153202);
delete from prospecting_loot_template where item in (87391,140220,140221,140222,140224,140225,140226,140227,142259,144330,144345,153248,153202);
delete from fishing_loot_template where item in (87391,140220,140221,140222,140224,140225,140226,140227,142259,144330,144345,153248,153202);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '28' AND `SourceGroup` = '1' AND `SourceEntry` = '87391' AND `SourceId` = '0' AND `ElseGroup` = '0' AND `ConditionTypeOrReference` = '1' AND `ConditionTarget` = '0' AND `ConditionValue1` = '105699' AND `ConditionValue2` = '0' AND `ConditionValue3` = '0'; 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '28' AND `SourceGroup` = '1' AND `SourceEntry` = '87391' AND `SourceId` = '0' AND `ElseGroup` = '1' AND `ConditionTypeOrReference` = '1' AND `ConditionTarget` = '0' AND `ConditionValue1` = '135855' AND `ConditionValue2` = '0' AND `ConditionValue3` = '0'; 
DELETE FROM conditions WHERE SourceTypeOrReferenceId IN (30) AND ConditionValue1 IN (228138);

replace into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) values
('30','1','87391','0','1','1','0','130653','0','0','0','0','','Сундучок с сокровищами'),
('30','1','153248','0','1','1','0','254707','0','0','0','0','','Сокровище Света'),
('30','1','153202','0','1','1','0','254591','0','0','0','0','','Аргунитовая друза'),
('30','1','128554','0','2','1','0','228138','0','0','0','0','','Под защитой Пустотыа');

replace into `world_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `expansion`) values
('0','87391','1','0','0','1','1','4'),
('0','140220','1','0','0','1','1','6'),
('0','140221','1','0','0','1','1','6'),
('0','140222','1','0','0','1','1','6'),
('0','140224','1','0','0','1','1','6'),
('0','140225','1','0','0','1','1','6'),
('0','140226','1','0','0','1','1','6'),
('0','140227','1','0','0','1','1','6'),
('0','142259','1','0','0','1','1','6'),
('0','144330','1','0','0','1','1','6'),
('0','144345','1','0','0','1','1','6'),
('0','153248','1','0','0','1','1','6'),
('0','153202','1','0','0','1','1','6');

replace into `world_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `expansion`) values
('0','128554','1','0','0','-228138','1','6');

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
('228138','140220','100','0','1','1','1'),
('228138','140221','100','0','1','1','1'),
('228138','140222','100','0','1','1','1'),
('228138','140224','100','0','1','1','1'),
('228138','140225','100','0','1','1','1'),
('228138','140226','100','0','1','1','1'),
('228138','140227','100','0','1','1','1'),
('228138','142259','100','0','1','1','1'),
('228138','144330','100','0','1','1','1'),
('228138','144345','100','0','1','1','1'),
('228138','153248','100','0','1','1','1'),
('228138','153202','100','0','1','1','1');
