CREATE TABLE `luck_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

CREATE TABLE `zone_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

-- Облики
replace into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) values
('30','1','139547','0','1','9','0','43647','0','0','0','0','','Руны помрачения'),
('30','1','140653','0','1','9','0','43651','0','0','0','0','','Чистая капля сока Шаладрассила'),
('30','1','139553','0','1','9','0','43653','0','0','0','0','','Знак стража поляны'),
('30','1','139557','0','2','9','0','43657','0','0','0','0','','Последний вздох леса'),
('30','1','139562','0','2','9','0','43662','0','0','0','0','','Дыхание бессмертной змеи'),
('30','1','140657','0','2','9','0','43668','0','0','0','0','','Венец Светорожденных'),
('30','1','139569','0','2','9','0','43669','0','0','0','0','','Коготь Н\'Зота'),
('30','1','139466','0','2','9','0','43558','0','0','0','0','','Путы Владыки Ветра'),
('30','1','139468','0','2','9','0','43558','0','0','0','0','','Путы Владыки Ветра'),
('30','1','139573','0','2','9','0','43674','0','0','0','0','','Боевая палица Ширваллы'),
('30','1','139574','0','2','9','0','43675','0','0','0','0','','Кольцо королевы-утопленницы'),
('30','1','140658','0','2','9','0','43680','0','0','0','0','','Череп Нитхегга'),
('30','1','140659','0','2','9','0','43680','0','0','0','0','','Череп Шар\'тоса'),
('30','1','140660','0','2','9','0','43680','0','0','0','0','','Рукоять Короля-бога');

DELETE FROM `creature_loot_template` WHERE `entry` in (106984,106982) AND `item` = '139547';
DELETE FROM `creature_loot_template` WHERE `entry` = '96512' AND `item` = '140653';
DELETE FROM `creature_loot_template` WHERE `entry` = '100497' AND `item` = '139553';
DELETE FROM `creature_loot_template` WHERE `entry` = '100497' AND `item` = '139557';
DELETE FROM `creature_loot_template` WHERE `entry` in (102679,102683,102682,102681) AND `item` = '139562';
DELETE FROM `creature_loot_template` WHERE `entry` in (95833) AND `item` = '140657';
DELETE FROM `creature_loot_template` WHERE `entry` in (105393) AND `item` = '139562';
DELETE FROM `creature_loot_template` WHERE `entry` in (91007) AND `item` = '139466';
DELETE FROM `creature_loot_template` WHERE `entry` in (95886) AND `item` = '139468';
DELETE FROM `creature_loot_template` WHERE `entry` in (99929,108829) AND `item` = '139573';
DELETE FROM `creature_loot_template` WHERE `entry` in (91784,91789) AND `item` = '139574';
DELETE FROM `creature_loot_template` WHERE `entry` in (95676,108678) AND `item` = '140659';
DELETE FROM `creature_loot_template` WHERE `entry` in (107544,95676) AND `item` = '140658';
DELETE FROM `creature_loot_template` WHERE `entry` in (95675,95676) AND `item` = '140660';
replace into `luck_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
('106984','139547','1','0','0','1','1'),
('96512','140653','1','0','0','1','1'),
('100497','139553','1','0','0','1','1'),
('102679','139562','1','0','0','1','1'),
('102683','139562','1','0','0','1','1'),
('102682','139562','1','0','0','1','1'),
('102681','139562','1','0','0','1','1'),
('95833','140657','1','0','0','1','1'),
('105393','139569','1','0','0','1','1'),
('91007','139466','1','0','0','1','1'),
('95886','139468','1','0','0','1','1'),
('99929','139573','1','0','0','1','1'),
('108829','139573','1','0','0','1','1'),
('91784','139574','1','0','0','1','1'),
('91789','139574','1','0','0','1','1'),
('95676','140659','1','0','0','1','1'),
('108678','140659','1','0','0','1','1'),
('107544','140658','1','0','0','1','1'),
('95676','140658','1','0','0','1','1'),
('95675','140660','1','0','0','1','1'),
('95676','140660','1','0','0','1','1');

-- Рецепты
UPDATE `instance_encounters` SET `creditEntry` = '98970' WHERE `entry` = '1835' AND `difficulty` = '-1' AND `creditEntry` = '98965';
UPDATE `gameobject_template` SET `Data30` = '72362' WHERE `entry` = '254168';

DELETE FROM `creature_loot_template` WHERE `entry` in (95676) AND `item` = 127933;
DELETE FROM `creature_loot_template` WHERE `entry` in (96759) AND `item` = 127932;
DELETE FROM `creature_loot_template` WHERE `entry` in (95888) AND `item` = 127931;
DELETE FROM `creature_loot_template` WHERE `entry` in (98970) AND `item` = 127930;
DELETE FROM `creature_loot_template` WHERE `entry` in (96028) AND `item` = 127929;
DELETE FROM `creature_loot_template` WHERE `entry` in (104218) AND `item` = 127926;
DELETE FROM `creature_loot_template` WHERE `entry` in (110321) AND `item` = 142121;
DELETE FROM `creature_loot_template` WHERE `entry` in (98208) AND `item` = 127927;
DELETE FROM `creature_loot_template` WHERE `entry` in (104636) AND `item` = 127934;
DELETE FROM `creature_loot_template` WHERE `entry` in (91007) AND `item` = 127928;
DELETE FROM `creature_loot_template` WHERE `entry` in (91007) AND `item` = 127928;
-- Кузнечное дело
DELETE FROM `creature_loot_template` WHERE `entry` in (122450) AND `item` = 151713;
DELETE FROM `creature_loot_template` WHERE `entry` in (103685) AND `item` = 137687;
DELETE FROM `creature_loot_template` WHERE `entry` in (95676) AND `item` = 137607;
DELETE FROM `creature_loot_template` WHERE `entry` in (96759) AND `item` = 136696;
-- Инженерное Дело
DELETE FROM `creature_loot_template` WHERE `entry` in (102387) AND `item` = 136700;
DELETE FROM `creature_loot_template` WHERE `entry` in (102446) AND `item` = 136700;
DELETE FROM `creature_loot_template` WHERE `entry` in (95675) AND `item` = 137717;
DELETE FROM `creature_loot_template` WHERE `entry` in (95675) AND `item` = 137718;
DELETE FROM `creature_loot_template` WHERE `entry` in (98970) AND `item` = 137694;
DELETE FROM `creature_loot_template` WHERE `entry` in (98208) AND `item` = 137712;
-- Наложение Чар
DELETE FROM `creature_loot_template` WHERE `entry` in (95888) AND `item` = 128607;
DELETE FROM `creature_loot_template` WHERE `entry` in (96028) AND `item` = 141916;
DELETE FROM `creature_loot_template` WHERE `entry` in (106087) AND `item` = 128611;
DELETE FROM `creature_loot_template` WHERE `entry` in (104218) AND `item` = 128594;
DELETE FROM `creature_loot_template` WHERE `entry` in (100497) AND `item` = 141917;
DELETE FROM `creature_loot_template` WHERE `entry` in (103769) AND `item` = 128612;
DELETE FROM `creature_loot_template` WHERE `entry` in (99192) AND `item` = 128595;
DELETE FROM `creature_loot_template` WHERE `entry` in (99192) AND `item` = 128595;
-- Портняжное Дело
DELETE FROM `creature_loot_template` WHERE `entry` in (18168) AND `item` = 138017;
DELETE FROM `creature_loot_template` WHERE `entry` in (17534) AND `item` = 138017;
DELETE FROM `creature_loot_template` WHERE `entry` in (17533) AND `item` = 138017;
DELETE FROM `creature_loot_template` WHERE `entry` in (17521) AND `item` = 138017;
DELETE FROM `creature_loot_template` WHERE `entry` in (11502) AND `item` = 138018;
DELETE FROM `creature_loot_template` WHERE `entry` in (112290) AND `item` = 138006;
DELETE FROM `creature_loot_template` WHERE `entry` in (112162) AND `item` = 138006;
DELETE FROM `creature_loot_template` WHERE `entry` in (111856) AND `item` = 138006;
DELETE FROM `creature_loot_template` WHERE `entry` in (112153) AND `item` = 138006;
DELETE FROM `creature_loot_template` WHERE `entry` in (120516) AND `item` = 138003;
DELETE FROM `creature_loot_template` WHERE `entry` in (96754) AND `item` = 138000;
DELETE FROM `creature_loot_template` WHERE `entry` in (122369) AND `item` = 151748;
DELETE FROM `creature_loot_template` WHERE `entry` in (122367) AND `item` = 151748;
DELETE FROM `creature_loot_template` WHERE `entry` in (122333) AND `item` = 151748;
DELETE FROM `creature_loot_template` WHERE `entry` in (103758) AND `item` = 142078;
DELETE FROM `creature_loot_template` WHERE `entry` in (114312) AND `item` = 142077;
DELETE FROM `creature_loot_template` WHERE `entry` in (114312) AND `item` = 138007;
DELETE FROM `creature_loot_template` WHERE `entry` in (114312) AND `item` = 138010;
DELETE FROM `creature_loot_template` WHERE `entry` in (114312) AND `item` = 138004;
DELETE FROM `creature_loot_template` WHERE `entry` in (114312) AND `item` = 138001;
-- Ювелирное Дело
DELETE FROM `creature_loot_template` WHERE `entry` in (96759) AND `item` = 137848;
DELETE FROM `creature_loot_template` WHERE `entry` in (96028) AND `item` = 137825;
DELETE FROM `creature_loot_template` WHERE `entry` in (107699) AND `item` = 137841;
DELETE FROM `creature_loot_template` WHERE `entry` in (122477) AND `item` = 151726;
DELETE FROM `creature_loot_template` WHERE `entry` in (122477) AND `item` = 151729;
DELETE FROM `creature_loot_template` WHERE `entry` in (122477) AND `item` = 151732;
DELETE FROM `creature_loot_template` WHERE `entry` in (122477) AND `item` = 151735;
DELETE FROM `creature_loot_template` WHERE `entry` in (122135) AND `item` = 151726;
DELETE FROM `creature_loot_template` WHERE `entry` in (122135) AND `item` = 151729;
DELETE FROM `creature_loot_template` WHERE `entry` in (122135) AND `item` = 151732;
DELETE FROM `creature_loot_template` WHERE `entry` in (122135) AND `item` = 151735;
DELETE FROM `creature_loot_template` WHERE `entry` in (98970) AND `item` = 137858;
DELETE FROM `creature_loot_template` WHERE `entry` in (91007) AND `item` = 137854;
DELETE FROM `creature_loot_template` WHERE `entry` in (102232) AND `item` = 137854;
DELETE FROM `creature_loot_template` WHERE `entry` in (102387) AND `item` = 137824;
DELETE FROM `creature_loot_template` WHERE `entry` in (102446) AND `item` = 137824;
DELETE FROM `creature_loot_template` WHERE `entry` in (95676) AND `item` = 137857;
DELETE FROM `creature_loot_template` WHERE `entry` in (104218) AND `item` = 137856;
DELETE FROM `creature_loot_template` WHERE `entry` in (91007) AND `item` = 137864;
DELETE FROM `creature_loot_template` WHERE `entry` in (102232) AND `item` = 137864;
DELETE FROM `creature_loot_template` WHERE `entry` in (102287) AND `item` = 137864;
DELETE FROM `creature_loot_template` WHERE `entry` in (109331) AND `item` = 137847;
DELETE FROM `creature_loot_template` WHERE `entry` in (108349) AND `item` = 137847;
DELETE FROM `creature_loot_template` WHERE `entry` in (99192) AND `item` = 137853;
DELETE FROM `creature_loot_template` WHERE `entry` in (98208) AND `item` = 137851;
DELETE FROM `creature_loot_template` WHERE `entry` in (95888) AND `item` = 137852;
-- Начертание
DELETE FROM `creature_loot_template` WHERE `entry` in (99192) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (91007) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (102446) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (102387) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (96028) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (95888) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (98970) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (98208) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (104218) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (124729) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (116944) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (114790) AND `item` = 141592;
DELETE FROM `creature_loot_template` WHERE `entry` in (114895) AND `item` = 141591;
DELETE FROM `creature_loot_template` WHERE `entry` in (96028) AND `item` = 136705;
DELETE FROM `creature_loot_template` WHERE `entry` in (98207) AND `item` = 141043;
DELETE FROM `creature_loot_template` WHERE `entry` in (124729) AND `item` = 153037;
DELETE FROM `creature_loot_template` WHERE `entry` in (126946) AND `item` = 151543;
DELETE FROM `creature_loot_template` WHERE `entry` in (126887) AND `item` = 153034;
DELETE FROM `creature_loot_template` WHERE `entry` in (114895) AND `item` = 143615;
DELETE FROM `creature_loot_template` WHERE `entry` in (114247) AND `item` = 143615;
DELETE FROM `creature_loot_template` WHERE `entry` in (114262) AND `item` = 143615;
DELETE FROM `creature_loot_template` WHERE `entry` in (113971) AND `item` = 143615;
DELETE FROM `creature_loot_template` WHERE `entry` in (114312) AND `item` = 143615;
DELETE FROM `creature_loot_template` WHERE `entry` in (114251) AND `item` = 143615;
DELETE FROM `creature_loot_template` WHERE `entry` in (114350) AND `item` = 143615;
DELETE FROM `creature_loot_template` WHERE `entry` in (114790) AND `item` = 143615;
DELETE FROM `creature_loot_template` WHERE `entry` in (114261) AND `item` = 143615;
DELETE FROM `creature_loot_template` WHERE `entry` in (114328) AND `item` = 143615;
DELETE FROM `creature_loot_template` WHERE `entry` in (114895) AND `item` = 143616;
DELETE FROM `creature_loot_template` WHERE `entry` in (114247) AND `item` = 143616;
DELETE FROM `creature_loot_template` WHERE `entry` in (114262) AND `item` = 143616;
DELETE FROM `creature_loot_template` WHERE `entry` in (113971) AND `item` = 143616;
DELETE FROM `creature_loot_template` WHERE `entry` in (114312) AND `item` = 143616;
DELETE FROM `creature_loot_template` WHERE `entry` in (114251) AND `item` = 143616;
DELETE FROM `creature_loot_template` WHERE `entry` in (114350) AND `item` = 143616;
DELETE FROM `creature_loot_template` WHERE `entry` in (114790) AND `item` = 143616;
DELETE FROM `creature_loot_template` WHERE `entry` in (114261) AND `item` = 143616;
DELETE FROM `creature_loot_template` WHERE `entry` in (114328) AND `item` = 143616;
DELETE FROM `creature_loot_template` WHERE `entry` in (117269) AND `item` = 151539;
DELETE FROM `creature_loot_template` WHERE `entry` in (96015) AND `item` = 141035;
DELETE FROM `creature_loot_template` WHERE `entry` in (111057) AND `item` = 141053;
DELETE FROM `creature_loot_template` WHERE `entry` in (120463) AND `item` = 141032;
DELETE FROM `creature_loot_template` WHERE `entry` in (114932) AND `item` = 141032;
DELETE FROM `creature_loot_template` WHERE `entry` in (111644) AND `item` = 141032;
DELETE FROM `creature_loot_template` WHERE `entry` in (17380) AND `item` = 141063;
DELETE FROM `creature_loot_template` WHERE `entry` in (121790) AND `item` = 141064;
DELETE FROM `creature_loot_template` WHERE `entry` in (99649) AND `item` = 141064;
DELETE FROM `creature_loot_template` WHERE `entry` in (117194) AND `item` = 141064;
DELETE FROM `creature_loot_template` WHERE `entry` in (118804) AND `item` = 141064;
DELETE FROM `creature_loot_template` WHERE `entry` in (97678) AND `item` = 141064;
DELETE FROM `creature_loot_template` WHERE `entry` in (121011) AND `item` = 141051;
DELETE FROM `creature_loot_template` WHERE `entry` in (120473) AND `item` = 141051;
DELETE FROM `creature_loot_template` WHERE `entry` in (98954) AND `item` = 141051;
DELETE FROM `creature_loot_template` WHERE `entry` in (100248) AND `item` = 141051;
DELETE FROM `creature_loot_template` WHERE `entry` in (100249) AND `item` = 141051;
DELETE FROM `creature_loot_template` WHERE `entry` in (100250) AND `item` = 141051;
DELETE FROM `creature_loot_template` WHERE `entry` in (98173) AND `item` = 141051;
DELETE FROM `creature_loot_template` WHERE `entry` in (91784) AND `item` = 141051;
DELETE FROM `creature_loot_template` WHERE `entry` in (104528) AND `item` = 143751;
DELETE FROM `creature_loot_template` WHERE `entry` in (102387) AND `item` = 140037;
DELETE FROM `creature_loot_template` WHERE `entry` in (102446) AND `item` = 140037;
DELETE FROM `creature_loot_template` WHERE `entry` in (125075) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (124691) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (124393) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (122468) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (126916) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (123371) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (122367) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (125050) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (125055) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (131561) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (124828) AND `item` = 151656;
DELETE FROM `creature_loot_template` WHERE `entry` in (125075) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (124691) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (124393) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (122468) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (126916) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (123371) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (122367) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (125050) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (125055) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (131561) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (124828) AND `item` = 151655;
DELETE FROM `creature_loot_template` WHERE `entry` in (125075) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (124691) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (124393) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (122468) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (126916) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (123371) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (122367) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (125050) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (125055) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (131561) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (124828) AND `item` = 151654;
DELETE FROM `creature_loot_template` WHERE `entry` in (104636) AND `item` = 137753;
DELETE FROM `creature_loot_template` WHERE `entry` in (104636) AND `item` = 139641;
DELETE FROM `creature_loot_template` WHERE `entry` in (104415) AND `item` = 139643;
DELETE FROM `creature_loot_template` WHERE `entry` in (104415) AND `item` = 137755;
DELETE FROM `creature_loot_template` WHERE `entry` in (102683) AND `item` = 139638;
DELETE FROM `creature_loot_template` WHERE `entry` in (102682) AND `item` = 139638;
DELETE FROM `creature_loot_template` WHERE `entry` in (102681) AND `item` = 139638;
DELETE FROM `creature_loot_template` WHERE `entry` in (102679) AND `item` = 139638;
DELETE FROM `creature_loot_template` WHERE `entry` in (102683) AND `item` = 137750;
DELETE FROM `creature_loot_template` WHERE `entry` in (102682) AND `item` = 137750;
DELETE FROM `creature_loot_template` WHERE `entry` in (102681) AND `item` = 137750;
DELETE FROM `creature_loot_template` WHERE `entry` in (102679) AND `item` = 137750;
DELETE FROM `creature_loot_template` WHERE `entry` in (106087) AND `item` = 139771;
DELETE FROM `creature_loot_template` WHERE `entry` in (111980) AND `item` = 139771;
DELETE FROM `creature_loot_template` WHERE `entry` in (111933) AND `item` = 139771;
DELETE FROM `creature_loot_template` WHERE `entry` in (106087) AND `item` = 139640;
DELETE FROM `creature_loot_template` WHERE `entry` in (111980) AND `item` = 139640;
DELETE FROM `creature_loot_template` WHERE `entry` in (111933) AND `item` = 139640;
DELETE FROM `creature_loot_template` WHERE `entry` in (106087) AND `item` = 137752;
DELETE FROM `creature_loot_template` WHERE `entry` in (106643) AND `item` = 137762;
DELETE FROM `creature_loot_template` WHERE `entry` in (106643) AND `item` = 139650;
DELETE FROM `creature_loot_template` WHERE `entry` in (114323) AND `item` = 142105;
DELETE FROM `creature_loot_template` WHERE `entry` in (114323) AND `item` = 142111;
DELETE FROM `creature_loot_template` WHERE `entry` in (110378) AND `item` = 142108;
DELETE FROM `creature_loot_template` WHERE `entry` in (111022) AND `item` = 137763;

replace into `luck_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
-- Алхимия
('95676','127933','1','0','0','1','1'),
('96759','127932','1','0','0','1','1'),
('95888','127931','1','0','0','1','1'),
('98970','127930','1','0','0','1','1'),
('96028','127929','1','0','0','1','1'),
('104218','127926','1','0','0','1','1'),
('110321','142121','1','0','0','1','1'),
('98208','127927','1','0','0','1','1'),
('104636','127934','1','0','0','1','1'),
('91007','127928','1','0','0','1','1'),
('91007','127928','1','0','0','1','1'),
-- Кузнечное дело
('122450','151713','1','0','0','1','1'),
('103685','137687','1','0','0','1','1'),
('95676','137607','1','0','0','1','1'),
('96759','136696','1','0','0','1','1'),
-- Инженерное Дело
('102387','136700','1','0','0','1','1'),
('102446','136700','1','0','0','1','1'),
('95675','137717','1','0','0','1','1'),
('95675','137718','1','0','0','1','1'),
('98970','137694','1','0','0','1','1'),
('98208','137712','1','0','0','1','1'),
-- Наложение Чар
('95888','128607','1','0','0','1','1'),
('96028','141916','1','0','0','1','1'),
('106087','128611','1','0','0','1','1'),
('104218','128594','1','0','0','1','1'),
('100497','141917','1','0','0','1','1'),
('103769','128612','1','0','0','1','1'),
('99192','128595','1','0','0','1','1'),
('99192','128595','1','0','0','1','1'),
-- Портняжное Дело
('18168','138017','1','0','0','1','1'),
('17534','138017','1','0','0','1','1'),
('17533','138017','1','0','0','1','1'),
('17521','138017','1','0','0','1','1'),
('11502','138018','1','0','0','1','1'),
('112290','138006','1','0','0','1','1'),
('112162','138006','1','0','0','1','1'),
('111856','138006','1','0','0','1','1'),
('112153','138006','1','0','0','1','1'),
('120516','138003','1','0','0','1','1'),
('96754','138000','1','0','0','1','1'),
('122369','151748','1','0','0','1','1'),
('122367','151748','1','0','0','1','1'),
('122333','151748','1','0','0','1','1'),
('103758','142078','1','0','0','1','1'),
('114312','142077','1','0','0','1','1'),
('114312','138007','1','0','0','1','1'),
('114312','138010','1','0','0','1','1'),
('114312','138004','1','0','0','1','1'),
('114312','138001','1','0','0','1','1'),
-- Ювелирное Дело
('96759','137848','1','0','0','1','1'),
('96028','137825','1','0','0','1','1'),
('107699','137841','1','0','0','1','1'),
('122477','151726','1','0','0','1','1'),
('122477','151729','1','0','0','1','1'),
('122477','151732','1','0','0','1','1'),
('122477','151735','1','0','0','1','1'),
('122135','151726','1','0','0','1','1'),
('122135','151729','1','0','0','1','1'),
('122135','151732','1','0','0','1','1'),
('122135','151735','1','0','0','1','1'),
('98970','137858','1','0','0','1','1'),
('91007','137854','1','0','0','1','1'),
('102232','137854','1','0','0','1','1'),
('102387','137824','1','0','0','1','1'),
('102446','137824','1','0','0','1','1'),
('95676','137857','1','0','0','1','1'),
('104218','137856','1','0','0','1','1'),
('91007','137864','1','0','0','1','1'),
('102232','137864','1','0','0','1','1'),
('102287','137864','1','0','0','1','1'),
('109331','137847','1','0','0','1','1'),
('108349','137847','1','0','0','1','1'),
('99192','137853','1','0','0','1','1'),
('98208','137851','1','0','0','1','1'),
('95888','137852','1','0','0','1','1'),
-- Начертание
('99192','141592','1','0','0','1','1'),
('91007','141592','1','0','0','1','1'),
('102446','141592','1','0','0','1','1'),
('102387','141592','1','0','0','1','1'),
('96028','141592','1','0','0','1','1'),
('95888','141592','1','0','0','1','1'),
('98970','141592','1','0','0','1','1'),
('98208','141592','1','0','0','1','1'),
('104218','141592','1','0','0','1','1'),
('124729','141592','1','0','0','1','1'),
('116944','141592','1','0','0','1','1'),
('114790','141592','1','0','0','1','1'),
('114895','141591','1','0','0','1','1'),
('96028','136705','1','0','0','1','1'),
('98207','141043','1','0','0','1','1'),
('124729','153037','1','0','0','1','1'),
('126946','151543','1','0','0','1','1'),
('126887','153034','1','0','0','1','1'),
('114895','143615','1','0','0','1','1'),
('114247','143615','1','0','0','1','1'),
('114262','143615','1','0','0','1','1'),
('113971','143615','1','0','0','1','1'),
('114312','143615','1','0','0','1','1'),
('114251','143615','1','0','0','1','1'),
('114350','143615','1','0','0','1','1'),
('114790','143615','1','0','0','1','1'),
('114261','143615','1','0','0','1','1'),
('114328','143615','1','0','0','1','1'),
('114895','143616','1','0','0','1','1'),
('114247','143616','1','0','0','1','1'),
('114262','143616','1','0','0','1','1'),
('113971','143616','1','0','0','1','1'),
('114312','143616','1','0','0','1','1'),
('114251','143616','1','0','0','1','1'),
('114350','143616','1','0','0','1','1'),
('114790','143616','1','0','0','1','1'),
('114261','143616','1','0','0','1','1'),
('114328','143616','1','0','0','1','1'),
('117269','151539','1','0','0','1','1'),
('96015','141035','1','0','0','1','1'),
('111057','141053','1','0','0','1','1'),
('120463','141032','1','0','0','1','1'),
('114932','141032','1','0','0','1','1'),
('111644','141032','1','0','0','1','1'),
('17380','141063','1','0','0','1','1'),
('121790','141064','1','0','0','1','1'),
('99649','141064','1','0','0','1','1'),
('117194','141064','1','0','0','1','1'),
('118804','141064','1','0','0','1','1'),
('97678','141064','1','0','0','1','1'),
('121011','141051','1','0','0','1','1'),
('120473','141051','1','0','0','1','1'),
('98954','141051','1','0','0','1','1'),
('100248','141051','1','0','0','1','1'),
('100249','141051','1','0','0','1','1'),
('100250','141051','1','0','0','1','1'),
('98173','141051','1','0','0','1','1'),
('91784','141051','1','0','0','1','1'),
('104528','143751','1','0','0','1','1'),
('102387','140037','1','0','0','1','1'),
('102446','140037','1','0','0','1','1'),
('125075','151656','1','0','0','1','1'),
('124691','151656','1','0','0','1','1'),
('124393','151656','1','0','0','1','1'),
('122468','151656','1','0','0','1','1'),
('126916','151656','1','0','0','1','1'),
('123371','151656','1','0','0','1','1'),
('122367','151656','1','0','0','1','1'),
('125050','151656','1','0','0','1','1'),
('125055','151656','1','0','0','1','1'),
('131561','151656','1','0','0','1','1'),
('124828','151656','1','0','0','1','1'),
('125075','151655','1','0','0','1','1'),
('124691','151655','1','0','0','1','1'),
('124393','151655','1','0','0','1','1'),
('122468','151655','1','0','0','1','1'),
('126916','151655','1','0','0','1','1'),
('123371','151655','1','0','0','1','1'),
('122367','151655','1','0','0','1','1'),
('125050','151655','1','0','0','1','1'),
('125055','151655','1','0','0','1','1'),
('131561','151655','1','0','0','1','1'),
('124828','151655','1','0','0','1','1'),
('125075','151654','1','0','0','1','1'),
('124691','151654','1','0','0','1','1'),
('124393','151654','1','0','0','1','1'),
('122468','151654','1','0','0','1','1'),
('126916','151654','1','0','0','1','1'),
('123371','151654','1','0','0','1','1'),
('122367','151654','1','0','0','1','1'),
('125050','151654','1','0','0','1','1'),
('125055','151654','1','0','0','1','1'),
('131561','151654','1','0','0','1','1'),
('124828','151654','1','0','0','1','1'),
('104636','137753','1','0','0','1','1'),
('104636','139641','1','0','0','1','1'),
('104415','139643','1','0','0','1','1'),
('104415','137755','1','0','0','1','1'),
('102683','139638','1','0','0','1','1'),
('102682','139638','1','0','0','1','1'),
('102681','139638','1','0','0','1','1'),
('102679','139638','1','0','0','1','1'),
('102683','137750','1','0','0','1','1'),
('102682','137750','1','0','0','1','1'),
('102681','137750','1','0','0','1','1'),
('102679','137750','1','0','0','1','1'),
('106087','139771','1','0','0','1','1'),
('111980','139771','1','0','0','1','1'),
('111933','139771','1','0','0','1','1'),
('106087','139640','1','0','0','1','1'),
('111980','139640','1','0','0','1','1'),
('111933','139640','1','0','0','1','1'),
('106087','137752','1','0','0','1','1'),
('106643','137762','1','0','0','1','1'),
('106643','139650','1','0','0','1','1'),
('114323','142105','1','0','0','1','1'),
('114323','142111','1','0','0','1','1'),
('110378','142108','1','0','0','1','1'),
('111022','137763','1','0','0','1','1');
