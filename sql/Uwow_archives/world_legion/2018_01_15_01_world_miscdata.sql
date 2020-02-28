ALTER TABLE `creature_template_wdb`
MODIFY COLUMN `Name1`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `Entry`,
MODIFY COLUMN `Name2`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `Name1`,
MODIFY COLUMN `Name3`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `Name2`,
MODIFY COLUMN `Name4`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `Name3`,
MODIFY COLUMN `NameAlt1`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `Name4`,
MODIFY COLUMN `NameAlt2`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `NameAlt1`,
MODIFY COLUMN `NameAlt3`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `NameAlt2`,
MODIFY COLUMN `NameAlt4`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `NameAlt3`,
MODIFY COLUMN `Title`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `NameAlt4`,
MODIFY COLUMN `TitleAlt`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `Title`,
MODIFY COLUMN `CursorName`  char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''  AFTER `TitleAlt`;

INSERT IGNORE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`) VALUES
(76582, 3.427399, 1.5, 0),
(76353, 3.003747, 3, 0),
(74504, 4.624731, 9, 0),
(74973, 4.024177, 1.5, 0),
(74596, 1.958016, 3.45, 0),
(74598, 2, 3, 0),
(75659, 2.21477, 6, 0),
(74597, 1.526981, 1.5, 0),
(74655, 1, 2, 0),
(75688, 0.5, 1, 0),
(74894, 3, 7.5, 0),
(75781, 1, 2, 0),
(76251, 16.5, 19.25, 0),
(76011, 3.468549, 6.75, 0),
(76104, 0.7, 1.5, 0),
(75045, 3, 13.5, 0),
(76069, 0.6885, 3.375, 0),
(75665, 0.4743, 2.325, 0),
(75668, 0.44735, 1.725, 0),
(75675, 0.7696956, 1.5, 0),
(75690, 0.6409937, 0, 0),
(75664, 0.4743, 2.325, 0),
(75673, 0.3366, 1.65, 0),
(75669, 0.44735, 1.725, 0),
(75663, 0.4743, 2.325, 0),
(75672, 0.3366, 1.65, 0),
(75671, 0.3366, 1.65, 0),
(75101, 3.094482, 2.25, 0),
(79837, 0.05, 1.5, 0),
(75438, 0.18, 0.6, 0),
(78177, 7, 10, 0),
(74912, 1, 2, 0),
(76076, 0.417, 1.5, 0),
(75839, 0.417, 1.5, 0),
(67453, 0.417, 1.5, 0),
(76105, 0.7, 1.5, 0),
(74272, 1.583987, 0.6, 0),
(75587, 18.45296, 10, 0),
(74861, 0.765, 3.75, 0),
(76139, 0.56405, 2.175, 0),
(76138, 0.4279, 1.65, 0),
(76059, 0.3672, 1.8, 0),
(75615, 5.853109, 4, 0),
(74438, 0.75, 3.75, 0),
(76064, 2.5, 2.5, 0),
(75655, 1.829097, 1.25, 0),
(75975, 0.3825, 1.875, 0),
(76005, 0.3825, 1.875, 0),
(75960, 0.3825, 1.875, 0),
(74875, 2.220781, 10, 0),
(74748, 0.612, 4, 0),
(74874, 0.8086742, 5, 0),
(74775, 0.612, 4, 0),
(75790, 0.135, 0.45, 0),
(75786, 0.33, 4.4, 0),
(75923, 0.306, 1.5, 0),
(76094, 0.135, 0.45, 0),
(74282, 3.426014, 10, 0),
(74283, 4.491861, 9, 0),
(75934, 0.3825, 1.875, 0),
(75933, 0.3519, 1.725, 0),
(74287, 3.004086, 6, 0),
(74498, 1.7205, 4.5, 0),
(75925, 0.306, 1.5, 0),
(75789, 0.6, 3, 0),
(76160, 4.005448, 8, 0),
(75930, 0.306, 1.5, 0),
(76095, 0.135, 0.45, 0),
(75607, 5.054135, 12, 0),
(75059, 3.551577, 2, 0),
(74020, 7.450409, 10.25, 0),
(75924, 0.306, 1.5, 0),
(75937, 0.3519, 1.725, 0),
(74493, 10.21286, 16, 0),
(75099, 2.332612, 6.5, 0),
(75802, 1.058963, 1.75, 0);

UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=2 WHERE `DisplayID`=53299;
UPDATE `creature_model_info` SET `CombatReach`=0.75 WHERE `DisplayID`=68670;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5 WHERE `DisplayID`=56;
UPDATE `creature_model_info` SET `BoundingRadius`=3.906734 WHERE `DisplayID`=27571;
UPDATE `creature_model_info` SET `BoundingRadius`=0.2604165, `CombatReach`=1.125 WHERE `DisplayID`=72622;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=10 WHERE `DisplayID`=46716;
UPDATE `creature_model_info` SET `CombatReach`=1.25 WHERE `DisplayID`=25265;
UPDATE `creature_model_info` SET `BoundingRadius`=0.03, `CombatReach`=0.1 WHERE `DisplayID`=51507;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3846448 WHERE `DisplayID`=857;
UPDATE `creature_model_info` SET `BoundingRadius`=2.028713, `CombatReach`=5 WHERE `DisplayID`=55144;
UPDATE `creature_model_info` SET `CombatReach`=1.5 WHERE `DisplayID`=69148;
UPDATE `creature_model_info` SET `CombatReach`=1.111111 WHERE `DisplayID`=346;
UPDATE `creature_model_info` SET `BoundingRadius`=1.146589, `CombatReach`=1.5 WHERE `DisplayID`=66783;
UPDATE `creature_model_info` SET `BoundingRadius`=0.225, `CombatReach`=1.5 WHERE `DisplayID`=65850;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=10 WHERE `DisplayID`=50;
UPDATE `creature_model_info` SET `BoundingRadius`=0.7, `CombatReach`=2 WHERE `DisplayID`=59660;
UPDATE `creature_model_info` SET `BoundingRadius`=0.7, `CombatReach`=1.5 WHERE `DisplayID`=61250;
UPDATE `creature_model_info` SET `BoundingRadius`=1.888, `CombatReach`=1, `DisplayID_Other_Gender`=1 WHERE `DisplayID`=64965;
UPDATE `creature_model_info` SET `CombatReach`=4.5 WHERE `DisplayID`=64719;
UPDATE `creature_model_info` SET `BoundingRadius`=0.45, `CombatReach`=1.5 WHERE `DisplayID`=1079;
UPDATE `creature_model_info` SET `BoundingRadius`=0.45, `CombatReach`=1.5 WHERE `DisplayID`=652;
UPDATE `creature_model_info` SET `CombatReach`=2 WHERE `DisplayID`=64390;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=1 WHERE `DisplayID`=38341;
UPDATE `creature_model_info` SET `BoundingRadius`=2.4713, `CombatReach`=3.9 WHERE `DisplayID`=25217;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3, `CombatReach`=1.415094 WHERE `DisplayID`=1762;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3, `CombatReach`=3.75 WHERE `DisplayID`=51409;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5656164, `CombatReach`=1.5 WHERE `DisplayID`=61871;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `CombatReach`=1.5 WHERE `DisplayID`=5306;
UPDATE `creature_model_info` SET `BoundingRadius`=0.6, `CombatReach`=1.5 WHERE `DisplayID`=65971;
UPDATE `creature_model_info` SET `CombatReach`=1.595745 WHERE `DisplayID`=31;
UPDATE `creature_model_info` SET `BoundingRadius`=0.7, `CombatReach`=0.7 WHERE `DisplayID`=45339;


INSERT IGNORE INTO `creature_template` (`entry`, `trainer_type`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VehicleId`, `HoverHeight`, `InhabitType`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `ControllerID`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `WorldEffects`, `PassiveSpells`, `flags_extra`) VALUES
(123872, 0, 0, 110, 110, 35, 16777216, 0, 1, 0.9920629, 2000, 2000, 1, 512, 67143680, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Twisting Nether Portal
(120265, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554944, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Spirit of Netrezaar
(122799, 0, 21254, 110, 110, 35, 3, 0, 3.2, 1.857143, 2000, 2000, 2, 33536, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Archmage Khadgar
(122800, 0, 21252, 110, 110, 35, 3, 0, 3.2, 1.857143, 2000, 2000, 2, 32768, 33554432, 3, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Prophet Velen
(121728, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554944, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Thal'kiel
(117974, 0, 21255, 113, 113, 2580, 1, 0, 1, 1, 2000, 2000, 1, 0, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Lord Illidan Stormrage
(120270, 0, 0, 113, 113, 16, 0, 0, 1, 1, 2000, 2000, 1, 33554432, 4196352, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Fulminating Sphere
(120390, 0, 0, 110, 110, 16, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554432, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Nether Rift
(121227, 0, 0, 113, 113, 2580, 0, 0, 1, 1, 2000, 2000, 1, 33554448, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Lord Illidan Stormrage
(121193, 0, 0, 112, 112, 16, 0, 0, 1.6, 0.5714286, 2000, 2000, 1, 32768, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Shadowsoul
(119206, 0, 0, 112, 112, 16, 0, 0, 1, 1.142857, 2000, 2000, 1, 0, 2099216, 0, 0, 1, 3, 0, 0, 0, 750, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Erupting Reflection
(120839, 0, 0, 110, 110, 16, 0, 0, 1, 1.142857, 2000, 2000, 1, 33555200, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Armageddon Stalker
(124598, 0, 0, 112, 112, 14, 0, 0, 2.8, 2, 2000, 2000, 1, 0, 33556480, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Fleetlord Dominator
(124590, 0, 0, 113, 113, 35, 0, 0, 1, 1, 2000, 2000, 1, 0, 33556480, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Lord Illidan Stormrage
(117269, 0, 0, 113, 113, 16, 0, 0, 2.8, 2, 2000, 2000, 1, 0, 6293504, 0, 0, 1, 7, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Kil'jaeden
(121721, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554944, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Thal'kiel
(118930, 0, 0, 112, 112, 16, 0, 0, 1, 1, 2000, 2000, 1, 0, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Ixallon the Soulbreaker
(117769, 0, 0, 112, 112, 16, 0, 0, 2.8, 2, 2000, 2000, 2, 32768, 4196352, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Felborne Spellbreaker
(121788, 0, 0, 113, 113, 16, 0, 0, 2.8, 2, 2000, 2000, 1, 256, 1111492608, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Kil'jaeden
(121789, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554688, 1077970944, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Beam Target Stalker
(117782, 0, 0, 112, 112, 16, 0, 0, 2.8, 2, 2000, 2000, 2, 32768, 4196352, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Eredar Bloodmage
(121790, 0, 0, 112, 112, 16, 0, 0, 2.8, 2, 2000, 2000, 1, 0, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Fleetlord Dominator
(117776, 0, 0, 112, 112, 16, 0, 0, 2.8, 2, 2000, 2000, 2, 32768, 4196352, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Shadow Council Warlock
(118052, 0, 0, 113, 113, 35, 0, 0, 1, 1.142857, 2000, 2000, 2, 32768, 1111492608, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Prophet Velen
(121169, 0, 0, 113, 113, 2501, 0, 0, 3.2, 1.857143, 2000, 2000, 1, 16, 37750784, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Lord Illidan Stormrage
(121170, 0, 0, 110, 110, 2263, 0, 0, 3.2, 1.857143, 2000, 2000, 2, 32768, 37748736, 3, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Prophet Velen
(121171, 0, 0, 110, 110, 2007, 0, 0, 3.2, 1.857143, 2000, 2000, 2, 33536, 4196352, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Archmage Khadgar
(119158, 0, 0, 112, 112, 14, 0, 0, 1, 10, 2000, 2000, 1, 33554432, 1073776640, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Corrupted Blade
(120705, 0, 0, 110, 110, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554688, 2099200, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Achievement Stalker
(117679, 0, 0, 112, 112, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554688, 2099200, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Grid Stalker
(119846, 0, 0, 112, 112, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554432, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Pylon Beam Stalker
(121720, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554944, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Thal'kiel
(117279, 0, 0, 112, 112, 1375, 0, 0, 1, 1, 2000, 2000, 1, 33555200, 69240832, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Containment Pylon
(120449, 0, 0, 112, 112, 16, 0, 0, 1, 1.142857, 2000, 2000, 1, 32768, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Defensive Countermeasure
(125542, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554688, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- El-ahrairah
(116939, 0, 0, 113, 113, 16, 0, 0, 6, 2.142857, 1500, 2000, 4, 16384, 4194304, 0, 5114, 1, 3, 0, 0, 0, 3500, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Fallen Avatar
(120867, 0, 0, 113, 113, 16, 0, 0, 2.8, 2, 2000, 2000, 1, 256, 37750784, 0, 5115, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Kil'jaeden
(118643, 0, 0, 1, 1, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554432, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Fragment of Obliteration
(118640, 0, 0, 1, 1, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554432, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Fragment of Creation
(120552, 0, 0, 110, 110, 190, 0, 0, 1, 1.142857, 2000, 2000, 1, 33555200, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Titanic Anomaly
(121495, 0, 0, 1, 1, 94, 0, 0, 1, 1, 2000, 2000, 1, 33555200, 1140852736, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Tears of Elune
(121110, 0, 0, 1, 1, 94, 0, 0, 1, 1, 2000, 2000, 1, 768, 67110912, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Tears of Elune
(119072, 0, 0, 112, 112, 16, 0, 0, 5.6, 2, 1500, 2000, 2, 64, 2097152, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- The Desolate Host
(121030, 0, 0, 112, 112, 16, 0, 0, 1, 1.142857, 2000, 2000, 2, 32832, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Fan'verg the Vicious
(120201, 0, 0, 110, 110, 16, 0, 0, 1, 1, 1500, 2000, 1, 32768, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Spectral Guardian
(120240, 0, 0, 110, 110, 614, 0, 0, 1, 1.142857, 2000, 2000, 2, 33588032, 2099200, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Redeemed Essence
(120188, 0, 0, 110, 110, 16, 0, 0, 1, 1.142857, 2000, 2000, 2, 32832, 2099200, 0, 0, 1, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Wailing Soul
(120191, 0, 0, 111, 111, 16, 0, 0, 1, 1.142857, 2000, 2000, 2, 32832, 2099200, 0, 0, 1, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Eternal Soulguard
(120182, 0, 0, 112, 112, 16, 0, 0, 1, 1.142857, 2000, 2000, 2, 32832, 2099200, 0, 0, 1, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Tormented Priestess
(120196, 0, 0, 110, 110, 16, 0, 0, 1, 1.142857, 2000, 2000, 2, 33588032, 2099200, 1, 0, 1, 7, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Drifting Soul
(120194, 0, 0, 111, 111, 16, 0, 0, 1, 1.142857, 2000, 2000, 2, 32832, 2099200, 0, 0, 1, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Ghostly Acolyte
(119205, 0, 0, 113, 113, 14, 0, 0, 2.8, 2, 1500, 2000, 1, 0, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Moontalon
(128222, 0, 0, 110, 110, 35, 0, 0, 1, 1, 2000, 2000, 1, 0, 34816, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Шпиль злобы
(120777, 0, 0, 112, 112, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 1, 0, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Guardian Sentry
(121496, 0, 0, 1, 1, 94, 0, 0, 1, 1, 2000, 2000, 1, 33555200, 1140852736, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Tidestone of Golganneth
(121105, 0, 0, 1, 1, 94, 0, 0, 1, 1, 2000, 2000, 1, 768, 67110912, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Tidestone of Golganneth
(115902, 0, 0, 112, 112, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 1, 0, 2097152, 0, 0, 1, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Razorjaw Waverunner
(118286, 0, 0, 112, 112, 16, 0, 0, 1, 0.8571429, 3000, 2000, 1, 33587200, 67110912, 1, 0, 1, 7, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Piranhado
(115795, 0, 0, 112, 112, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 1, 0, 0, 0, 0, 1, 3, 0, 0, 0, 5000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Abyss Stalker
(115896, 0, 0, 112, 112, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 1, 33554432, 2097152, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Electrifying Jellyfish
(116881, 0, 0, 112, 112, 16, 0, 0, 1, 1.142857, 3000, 2000, 1, 33587200, 67110912, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Ossunet
(121712, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554944, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Thal'kiel
(116843, 0, 0, 112, 112, 16, 0, 0, 1, 1.142857, 3000, 2000, 1, 33587200, 69208064, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Sarukel
(116841, 0, 0, 112, 112, 16, 0, 0, 1, 1.142857, 3000, 2000, 1, 33587200, 69208064, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Piranhado
(121072, 0, 0, 112, 112, 14, 0, 0, 1, 1, 2000, 2000, 1, 0, 18432, 1, 5364, 2, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Water Bubble
(121047, 0, 0, 112, 112, 16, 0, 0, 1, 1.428571, 2000, 2000, 1, 32832, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Deeploc
(121494, 0, 0, 1, 1, 94, 0, 0, 1, 1, 2000, 2000, 1, 33555200, 1140852736, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Hammer of Khaz'goroth
(121111, 0, 0, 1, 1, 94, 0, 0, 1, 1, 2000, 2000, 1, 768, 67110912, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Hammer of Khaz'goroth
(118727, 0, 0, 110, 110, 190, 0, 0, 1, 1.142857, 2000, 2000, 1, 256, 67143680, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Spiritual Barrier
(120368, 0, 0, 112, 112, 16, 0, 0, 1, 1.142857, 1500, 2000, 2, 320, 67108864, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- The Desolate Host
(118562, 0, 0, 113, 113, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 256, 67635200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Remnant of Hope
(124815, 0, 0, 110, 110, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33555200, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Fel Line Stalker
(118460, 0, 0, 113, 113, 16, 0, 0, 1, 1, 1500, 2000, 2, 64, 2129920, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Engine of Souls
(121718, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554944, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Thal'kiel
(118462, 0, 0, 113, 113, 16, 0, 0, 1, 1.142857, 1500, 2000, 2, 64, 2097152, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Soul Queen Dejahna
(118715, 0, 0, 112, 112, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 1, 0, 2097152, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Reanimated Templar
(118728, 0, 0, 112, 112, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 1, 0, 2097152, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Ghastly Bonewarden
(118729, 0, 0, 112, 112, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 2, 0, 2097152, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Fallen Priestess
(119723, 0, 0, 110, 110, 35, 2, 0, 1, 1.142857, 2000, 2000, 2, 0, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Image of Aegwynn
(118730, 0, 0, 112, 112, 16, 0, 0, 1.6, 0.5714286, 1500, 2000, 2, 0, 2097152, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Soul Residue
(120988, 0, 0, 110, 110, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554688, 69208064, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Swirling Souls
(117957, 0, 0, 110, 110, 16, 0, 0, 1, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Tormented Soul
(118701, 0, 0, 110, 110, 190, 0, 0, 1, 1.142857, 2000, 2000, 1, 256, 69765120, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Spiritual Font
(118699, 0, 0, 110, 110, 190, 16777216, 0, 1, 1.142857, 2000, 2000, 1, 256, 69240832, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Spiritual Font
(117123, 0, 0, 112, 112, 14, 0, 0, 1, 1.428571, 2000, 2000, 1, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Tidescale Legionnaire
(121003, 0, 0, 112, 112, 16, 0, 0, 1, 1, 2000, 2000, 2, 32832, 2099200, 0, 0, 3.75, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Rez the Tombwatcher
(121400, 0, 0, 111, 111, 16, 0, 0, 1, 1.142857, 2000, 2000, 1, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Accusator Gnazh
(121399, 0, 0, 111, 111, 16, 0, 0, 1, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Inquisitor Sebilus
(121473, 0, 0, 111, 111, 16, 0, 0, 1, 1.428571, 2000, 2000, 2, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Coercitor Nixa
(121011, 0, 0, 112, 112, 14, 0, 0, 1, 0.9920629, 2000, 2000, 2, 0, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Tidescale Witch
(117154, 0, 0, 111, 111, 16, 0, 0, 1, 1.142857, 2000, 2000, 1, 0, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Razorjaw Acolyte
(121004, 0, 0, 111, 111, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 0, 2048, 0, 0, 1, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Razorjaw Myrmidon
(121633, 0, 0, 110, 110, 35, 0, 0, 1, 1, 2000, 2000, 1, 0, 4194304, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Wind Rush Totem
(116976, 0, 0, 113, 113, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554688, 4196352, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Infernal Spike
(118894, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33555200, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Center Stalker
(118773, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33555200, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Jump Target Stalker
(122850, 0, 0, 111, 111, 1917, 0, 0, 1.2, 1.714286, 1500, 2000, 1, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Umbral Guard
(120158, 0, 0, 111, 111, 16, 0, 0, 1, 1, 2000, 2000, 1, 0, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Volatile Corruption
(119054, 0, 0, 110, 110, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33555200, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Glaive Target
(120153, 0, 0, 111, 111, 16, 0, 0, 1.666668, 1.142857, 2000, 2000, 1, 0, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Eonic Defender
(121719, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554944, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Thal'kiel
(122847, 0, 0, 111, 111, 1917, 0, 0, 1.2, 1.714286, 2000, 2000, 8, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Umbral Priestess
(120131, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33555200, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Aberrant Light
(120132, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33555200, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Aberrant Fel
(120808, 0, 0, 111, 111, 1917, 0, 0, 2, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Lylth the Silent
(121717, 0, 0, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554944, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Thal'kiel
(120784, 0, 0, 111, 111, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554432, 67143680, 1, 0, 1, 3, 111, 111, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Aegwynn's Trap
(115892, 0, 0, 113, 113, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554432, 1073743872, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Ember Stalker
(118182, 0, 0, 113, 113, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554432, 4229120, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Moon Stalker
(120851, 0, 0, 111, 111, 1917, 0, 0, 3.2, 2, 2000, 2000, 1, 32768, 4196352, 0, 0, 1, 7, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Hippogryph Lord Varah
(120789, 0, 0, 111, 111, 1917, 0, 0, 1.2, 1.714286, 2000, 2000, 1, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Lieutenant Silvermight
(118289, 0, 0, 113, 113, 14, 0, 0, 2.8, 2, 1500, 2000, 1, 0, 1073743872, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Maiden of Vigilance
(118374, 0, 0, 113, 113, 14, 0, 0, 2.8, 2, 1500, 2000, 1, 33587200, 4196352, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Captain Yathae Moonstrike
(118523, 0, 0, 113, 113, 14, 0, 0, 2.8, 2, 1500, 2000, 1, 33587200, 4196352, 0, 0, 1, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Huntress Kasparian
(118518, 0, 0, 113, 113, 14, 0, 0, 2.8, 2, 1500, 2000, 1, 32768, 4196352, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Priestess Lunaspyre
(120463, 0, 0, 112, 112, 16, 0, 0, 2, 0.7142857, 1500, 2000, 1, 0, 2099200, 0, 0, 3.3, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Undersea Custodian
(122851, 0, 0, 111, 111, 1917, 0, 0, 1, 1.142857, 2000, 2000, 4, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Umbral Archer
(121605, 0, 0, 1, 1, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33555200, 1073743872, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Breach
(121630, 0, 0, 1, 1, 94, 0, 0, 1, 1, 2000, 2000, 1, 33555200, 1140852736, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Aegis of Aggramar
(116689, 0, 0, 113, 113, 16, 0, 0, 1, 2, 2000, 2000, 4, 32768, 1073741824, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Atrigan
(116691, 0, 0, 113, 113, 16, 0, 0, 1, 1, 2000, 2000, 4, 32768, 1073741824, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Belac
(120720, 0, 0, 111, 111, 1917, 0, 0, 1.2, 1.714286, 1500, 2000, 1, 32768, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Temple Guard
(120719, 0, 0, 111, 111, 1917, 0, 0, 1.2, 1.714286, 2000, 2000, 8, 32768, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Temple Priestess
(115767, 0, 0, 113, 113, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 2, 64, 4194304, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Mistress Sassz'ine
(117264, 0, 0, 112, 112, 16, 0, 0, 4.8, 1.714286, 1500, 2000, 4, 32768, 1073741824, 0, 5116, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Maiden of Valor
(120473, 0, 0, 111, 111, 16, 0, 0, 1, 1.428571, 2000, 2000, 1, 32832, 2099200, 0, 5367, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Tidescale Combatant
(121498, 0, 0, 111, 111, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 32832, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Twilight Soul
(121028, 0, 0, 111, 111, 2156, 0, 0, 1, 1.428571, 2000, 2000, 1, 33600, 6293504, 0, 0, 1.5, 3, 111, 111, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Cove Seagull
(121190, 0, 0, 113, 113, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 2, 33555264, 69206016, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Mistress Sassz'ine
(121184, 0, 0, 113, 113, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 2, 832, 2097152, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Mistress Sassz'ine
(120477, 0, 0, 111, 111, 16, 0, 0, 3.6, 1.285714, 1500, 2000, 1, 32768, 2099200, 0, 0, 1, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Deep Stalker
(120021, 0, 0, 112, 112, 16, 0, 0, 1, 1.428571, 2000, 2000, 1, 16448, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Kelpfist
(119729, 0, 0, 113, 113, 2501, 0, 0, 3.2, 1.857143, 2000, 2000, 1, 256, 37750784, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Lord Illidan Stormrage
(116407, 0, 0, 113, 113, 16, 0, 0, 1, 2, 2000, 2000, 4, 0, 2097152, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Harjatan
(120697, 0, 0, 111, 111, 7, 0, 0, 1.2, 1.714286, 2000, 2000, 1, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Worshiper of Elune
(119728, 0, 0, 110, 110, 2263, 0, 0, 3.2, 1.857143, 2000, 2000, 2, 33024, 37748736, 3, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Prophet Velen
(120721, 0, 0, 111, 111, 1917, 0, 0, 1, 1.142857, 2000, 2000, 4, 32768, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Temple Archer
(120482, 0, 0, 110, 110, 16, 0, 0, 1, 1.428571, 2000, 2000, 2, 32832, 2099200, 0, 5367, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Tidescale Seacaller
(115844, 0, 0, 113, 113, 14, 0, 0, 2.8, 2, 1500, 2000, 4, 0, 1073741824, 0, 5274, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Goroth
(117596, 0, 0, 111, 111, 16, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554432, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Razorjaw Gladiator
(116569, 0, 0, 111, 111, 16, 0, 0, 1, 2, 2000, 2000, 1, 33554432, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Razorjaw Wavemender
(118022, 0, 0, 112, 112, 16, 0, 0, 1.2, 0.4285714, 2000, 2000, 1, 0, 2099200, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Infernal Chaosbringer
(117931, 0, 0, 113, 113, 14, 0, 0, 1, 1.142857, 2000, 2000, 1, 33554432, 4196352, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Lava Stalker
(121024, 0, 0, 111, 111, 2502, 0, 0, 1, 1.142857, 1500, 2000, 1, 570425344, 2099201, 8193, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Felguard Invader
(119730, 0, 0, 110, 110, 2501, 0, 0, 3.2, 1.857143, 2000, 2000, 2, 33024, 37750784, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Maiev Shadowsong
(120516, 0, 0, 111, 111, 16, 0, 0, 1.6, 1.285714, 1500, 2000, 1, 32768, 2048, 0, 0, 1, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0); -- Razorjaw Swift-fin

UPDATE `creature_template` SET `minlevel`=98 WHERE `entry`=88087; -- Hatecoil Stormcaller
UPDATE `creature_template` SET `ControllerID`=-1 WHERE `entry`=64782; -- Bandicoon
UPDATE `creature_template` SET `minlevel`=98 WHERE `entry`=91459; -- Naga Brute
UPDATE `creature_template` SET `ControllerID`=-1 WHERE `entry`=63062; -- Bandicoon
UPDATE `creature_template` SET `ScaleLevelDuration`=100 WHERE `entry`=109351; -- Veil Prowler
UPDATE `creature_template` SET `minlevel`=98 WHERE `entry`=88086; -- Hatecoil Riptail
UPDATE `creature_template` SET `InhabitType`=3 WHERE `entry`=91756; -- Eternal Guardian
UPDATE `creature_template` SET `minlevel`=98 WHERE `entry`=89802; -- Hatecoil Skrog
UPDATE `creature_template` SET `minlevel`=98 WHERE `entry`=89025; -- Hatecoil Spitespeaker
UPDATE `creature_template` SET `minlevel`=98, `unit_flags2`=35653632 WHERE `entry`=107447; -- Hatecoil Harpooner
UPDATE `creature_template` SET `unit_class`=2, `InhabitType`=3, `ControllerID`=-1 WHERE `entry`=55370; -- General Purpose Bunny ZTO
UPDATE `creature_template` SET `minlevel`=98 WHERE `entry`=89024; -- Hatecoil Fathom-Stalker
UPDATE `creature_template` SET `InhabitType`=3, `ControllerID`=-1 WHERE `entry`=62050; -- Grey Moth
UPDATE `creature_template` SET `minlevel`=98 WHERE `entry`=109349; -- Veil Shadowrunner
UPDATE `creature_template` SET `InhabitType`=3 WHERE `entry`=93725; -- Slithering Brownscale
UPDATE `creature_template` SET `minlevel`=98, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=89891; -- Dragon Turtle
UPDATE `creature_template` SET `ScaleLevelMin`=0 WHERE `entry`=62821; -- Mystic Birdhat
UPDATE `creature_template` SET `ScaleLevelMin`=0 WHERE `entry`=62822; -- Cousin Slowhands
UPDATE `creature_template` SET `BaseAttackTime`=1249, `unit_flags`=33554944 WHERE `entry`=47649; -- Efflorescence
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=99499; -- Never Ending Treasure
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=99496; -- Never Ending Treasure
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=99495; -- Never Ending Treasure
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=99492; -- Never Ending Treasure
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=99490; -- Never Ending Treasure
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `speed_run`=1, `unit_flags`=512, `unit_flags2`=67143680, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=60383; -- The Golden Banana
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=99489; -- Never Ending Treasure
UPDATE `creature_template` SET `minlevel`=89, `maxlevel`=89, `speed_run`=1.285714, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=61667; -- Ruthers
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `speed_run`=1, `RangeAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=32768, `unit_flags3`=1, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=65298; -- Silversage Incense
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=58, `RangeAttackTime`=2000, `unit_flags`=768, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=28267; -- Coyote Spirit
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `npcflag`=16777216, `speed_walk`=3.6, `speed_run`=1.285714, `unit_flags2`=2048, `unit_flags3`=1, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=65334; -- Shushen's Spittoon
UPDATE `creature_template` SET `speed_walk`=1.2, `speed_run`=0.8571429, `RangeAttackTime`=2000, `unit_class`=2, `unit_flags`=33554432, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=73743; -- Crashin' Thrashin' Flyer
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `npcflag`=16777216, `RangeAttackTime`=2000, `unit_flags`=512, `unit_flags2`=32800, `unit_flags3`=1, `HoverHeight`=2, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=65409; -- Jin Warmkeg's Brew
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1, `faction`=188 WHERE `entry`=116369; -- Simulacra
UPDATE `creature_template` SET `faction`=1682, `speed_run`=0.9920629, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=256, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=101527; -- Blingtron 6000
UPDATE `creature_template` SET `gossip_menu_id`=0, `unit_flags`=784 WHERE `entry`=101462; -- Reaves
UPDATE `creature_template` SET `faction`=35, `unit_class`=8, `unit_flags`=33587216, `unit_flags2`=335546384, `InhabitType`=3, `ControllerID`=-1 WHERE `entry`=54569; -- Transcendence Spirit
UPDATE `creature_template` SET `speed_run`=1.1 WHERE `entry`=108655; -- Spawn of Serpentrix
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=1747 WHERE `entry`=99625; -- Wind Spirit
UPDATE `creature_template` SET `BaseAttackTime`=1747, `unit_class`=8 WHERE `entry`=69792; -- Earth Spirit
UPDATE `creature_template` SET `BaseAttackTime`=1747, `unit_class`=8 WHERE `entry`=69791; -- Fire Spirit
UPDATE `creature_template` SET `npcflag`=16777216, `speed_run`=0.8571429, `BaseAttackTime`=1200, `RangeAttackTime`=2000, `unit_flags`=33554944, `unit_flags2`=2048, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=65325; -- Puntable Marmot
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `speed_run`=1, `RangeAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=2048, `unit_flags3`=1, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=65387; -- Totem of Harmony
UPDATE `creature_template` SET `faction`=188, `unit_flags`=33536, `unit_flags2`=2048, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=64747; -- Fiery Familiar
UPDATE `creature_template` SET `BaseAttackTime`=2000, `RangeAttackTime`=2000 WHERE `entry`=85589; -- Archimonde
UPDATE `creature_template` SET `BaseAttackTime`=2000, `RangeAttackTime`=2000 WHERE `entry`=88940; -- Missive Transmitter
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=954, `BaseAttackTime`=1457 WHERE `entry`=78158; -- Doomguard
UPDATE `creature_template` SET `BaseAttackTime`=8044 WHERE `entry`=94365; -- Ashbringer
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=1488, `ControllerID`=-1 WHERE `entry`=60849; -- Jade Serpent Statue
UPDATE `creature_template` SET `BaseAttackTime`=1837 WHERE `entry`=105850; -- Akaari's Soul
UPDATE `creature_template` SET `BaseAttackTime`=1441, `ControllerID`=-1 WHERE `entry`=47244; -- Mirror Image
UPDATE `creature_template` SET `faction`=188, `speed_walk`=1.388888, `speed_run`=0.8571429, `RangeAttackTime`=2000, `unit_flags`=33536, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=56083; -- Yellow Balloon
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1, `faction`=188, `BaseAttackTime`=2000, `RangeAttackTime`=2000 WHERE `entry`=88807; -- Argi
UPDATE `creature_template` SET `BaseAttackTime`=7539 WHERE `entry`=94358; -- Ashbringer
UPDATE `creature_template` SET `SpellStateAnimKitID`=0 WHERE `entry`=43499; -- Consecration
UPDATE `creature_template` SET `unit_flags2`=1077938176, `flags_extra`=128 WHERE `entry`=92879; -- SLG Generic Stalker (Gigantic AOI)
UPDATE `creature_template` SET `faction`=190, `RangeAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=2099200, `unit_flags3`=1, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=45396; -- Dave's Industrial Light and Magic Bunny (Medium)(Sessile)(Large AOI)
UPDATE `creature_template` SET `unit_flags`=256, `unit_flags3`=1 WHERE `entry`=119777; -- Durgan Stonestorm
UPDATE `creature_template` SET `unit_flags3`=8193, `ScaleLevelMin`=0, `ScaleLevelMax`=0 WHERE `entry`=121023; -- Legionfall Soldier
UPDATE `creature_template` SET `minlevel`=98, `unit_flags`=0, `unit_flags2`=37750784, `ScaleLevelMin`=0, `ScaleLevelMax`=0 WHERE `entry`=119768; -- Legionfall Soldier
UPDATE `creature_template` SET `faction`=1665, `speed_walk`=0.8, `speed_run`=1.6, `BaseAttackTime`=1673, `InhabitType`=3 WHERE `entry`=119077; -- Dreamgrove Protector



DELETE FROM `creature_template_wdb` WHERE `Entry` IN (125542, 124590, 124598, 124815, 128222, 123872, 122799, 122800, 122847, 122850, 122851);
REPLACE INTO `creature_template_wdb` (`Entry`, `Name1`, `NameAlt1`, `Title`, `TitleAlt`, `Leader`, `RequiredExpansion`, `Family`, `Classification`, `Type`, `TypeFlags`, `TypeFlags2`, `HpMulti`, `PowerMulti`, `FlagQuest`, `VignetteID`, `CursorName`, `MovementInfoID`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `QuestItem7`, `QuestItem8`, `QuestItem9`, `QuestItem10`, `KillCredit1`, `KillCredit2`, `DisplayId1`, `DisplayId2`, `DisplayId3`, `DisplayId4`, `VerifiedBuild`) VALUES
(125542, 'Эль-ахраира', '', 0, 0, 0, 6, 0, 0, 10, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4626, 27823, 0, 0, 25549),
(124590, 'Владыка Иллидан Ярость Бури', '', 'Повелитель иллидари', 0, 0, 6, 0, 1, 7, 4, 0, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27571, 0, 0, 0, 25549),
(124598, 'Покоритель миров', '', 0, 0, 0, 6, 0, 1, 3, 1076887624, 0, 100, 1, 0, 0, 0, 186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75659, 0, 0, 0, 25549),
(124815, 'Ловчий линий Скверны', '', 0, 0, 0, 6, 0, 1, 10, 17826816, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169, 11686, 0, 0, 25549),
(128222, 'Шпиль злобы', '', 0, 0, 0, 0, 0, 0, 9, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79837, 0, 0, 0, 25549),
(123872, 'Портал Круговерти Пустоты', '', 0, 0, 0, 6, 0, 1, 10, 1611661392, 6, 1, 1, 0, 0, 'openhandglow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53299, 0, 0, 0, 25549),
(122799, 'Верховный маг Кадгар', '', 0, 0, 0, 6, 0, 1, 7, 4, 0, 200, 80, 0, 0, 0, 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61871, 0, 0, 0, 25549),
(122800, 'Пророк Велен', '', 0, 0, 0, 6, 0, 1, 7, 262212, 0, 200, 15, 0, 0, 0, 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75801, 0, 0, 0, 25549),
(122847, 'Темная жрица', '', 0, 0, 0, 6, 0, 1, 6, 2097224, 0, 40, 1, 0, 0, 0, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75933, 0, 0, 0, 25549),
(122850, 'Темная стражница', '', 0, 0, 0, 6, 0, 1, 6, 2097224, 0, 50, 1, 0, 0, 0, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75934, 0, 0, 0, 25549),
(122851, 'Темная лучница', '', 0, 0, 0, 6, 0, 1, 6, 2097224, 0, 45, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75937, 0, 0, 0, 25549);

UPDATE `creature_template_wdb` SET `VerifiedBuild`=25549 WHERE `Entry` IN (73743, 111722, 121788, 121789, 60383, 120705, 99489, 99490, 99492, 99495, 99496, 99499, 120784, 91756, 92879, 116369, 120839, 119723, 119726, 119728, 119729, 119730, 99625, 107447, 120867, 61667, 56083, 118640, 118643, 32638, 32639, 119768, 119777, 62821, 62822, 89634, 118699, 118701, 108655, 118727, 119846, 47244, 103098, 28267, 120988, 118773, 121023, 121024, 121028, 117679, 121072, 89802, 89811, 121105, 121110, 121111, 118894, 120021, 63062, 65298, 94358, 89891, 60849, 121169, 121170, 121171, 94365, 69791, 69792, 65325, 121184, 65334, 116721, 121190, 88807, 121227, 65387, 120131, 120132, 62050, 65409, 120153, 111221, 117931, 119054, 120188, 117957, 116841, 119077, 116843, 120196, 120201, 117974, 88940, 85589, 116881, 120240, 120265, 119158, 118052, 101297, 89024, 89025, 111374, 119205, 116976, 105838, 115892, 115896, 120368, 105850, 121494, 121495, 121496, 121498, 120390, 118182, 101462, 54569, 120473, 120477, 88086, 88087, 120482, 121605, 118255, 91459, 121630, 121633, 109349, 93714, 93725, 120552, 118322, 43499, 31216, 121712, 64747, 121717, 121718, 121719, 121720, 121721, 78158, 121728, 117279, 64782);
UPDATE `creature_template_wdb` SET `Classification`=1, `VerifiedBuild`=25549 WHERE `Entry`=121790;
UPDATE `creature_template_wdb` SET `HpMulti`='1239', `VerifiedBuild`=25549 WHERE `Entry` IN (118460, 118462);
UPDATE `creature_template_wdb` SET `HpMulti`='9', `VerifiedBuild`=25549 WHERE `Entry`=120697;
UPDATE `creature_template_wdb` SET `HpMulti`='40', `VerifiedBuild`=25549 WHERE `Entry` IN (120719, 118715);
UPDATE `creature_template_wdb` SET `RequiredExpansion`=6, `HpMulti`='50', `VerifiedBuild`=25549 WHERE `Entry`=120720;
UPDATE `creature_template_wdb` SET `HpMulti`='45', `VerifiedBuild`=25549 WHERE `Entry` IN (120721, 120194);
UPDATE `creature_template_wdb` SET `HpMulti`='1400', `VerifiedBuild`=25549 WHERE `Entry` IN (118518, 118523, 118289, 118374);
UPDATE `creature_template_wdb` SET `HpMulti`='100', `VerifiedBuild`=25549 WHERE `Entry` IN (120777, 120449);
UPDATE `creature_template_wdb` SET `HpMulti`='120', `VerifiedBuild`=25549 WHERE `Entry` IN (120789, 120808, 121399);
UPDATE `creature_template_wdb` SET `DisplayId1`=25204, `VerifiedBuild`=25549 WHERE `Entry`=118562;
UPDATE `creature_template_wdb` SET `RequiredExpansion`=6, `HpMulti`='120', `VerifiedBuild`=25549 WHERE `Entry`=120851;
UPDATE `creature_template_wdb` SET `HpMulti`='1263.04', `VerifiedBuild`=25549 WHERE `Entry`=116407;
UPDATE `creature_template_wdb` SET `HpMulti`='12.75797', `VerifiedBuild`=25549 WHERE `Entry`=117596;
UPDATE `creature_template_wdb` SET `HpMulti`='25', `VerifiedBuild`=25549 WHERE `Entry` IN (118728, 117154);
UPDATE `creature_template_wdb` SET `HpMulti`='46.06875', `VerifiedBuild`=25549 WHERE `Entry`=118729;
UPDATE `creature_template_wdb` SET `DisplayId1`=30779, `HpMulti`='4.3875', `VerifiedBuild`=25549 WHERE `Entry`=118730;
UPDATE `creature_template_wdb` SET `TypeFlags`=1074790400, `VerifiedBuild`=25549 WHERE `Entry` IN (100868, 47649);
UPDATE `creature_template_wdb` SET `HpMulti`='125', `VerifiedBuild`=25549 WHERE `Entry`=121003;
UPDATE `creature_template_wdb` SET `HpMulti`='30', `VerifiedBuild`=25549 WHERE `Entry`=121004;
UPDATE `creature_template_wdb` SET `HpMulti`='55', `VerifiedBuild`=25549 WHERE `Entry` IN (121011, 120191);
UPDATE `creature_template_wdb` SET `HpMulti`='80', `VerifiedBuild`=25549 WHERE `Entry`=121030;
UPDATE `creature_template_wdb` SET `HpMulti`='11.25704', `VerifiedBuild`=25549 WHERE `Entry`=116569;
UPDATE `creature_template_wdb` SET `HpMulti`='6', `VerifiedBuild`=25549 WHERE `Entry`=121047;
UPDATE `creature_template_wdb` SET `TypeFlags`=2097224, `Classification`=1, `HpMulti`='90', `VerifiedBuild`=25549 WHERE `Entry`=117769;
UPDATE `creature_template_wdb` SET `TypeFlags`=2097224, `Classification`=1, `HpMulti`='75', `VerifiedBuild`=25549 WHERE `Entry`=117776;
UPDATE `creature_template_wdb` SET `TypeFlags`=2097224, `Classification`=1, `HpMulti`='70', `VerifiedBuild`=25549 WHERE `Entry`=117782;
UPDATE `creature_template_wdb` SET `Type`=3, `HpMulti`='1500', `VerifiedBuild`=25549 WHERE `Entry` IN (116689, 116691);
UPDATE `creature_template_wdb` SET `TypeFlags`=2097256, `Classification`=1, `HpMulti`='175', `VerifiedBuild`=25549 WHERE `Entry`=118930;
UPDATE `creature_template_wdb` SET `HpMulti`='5', `VerifiedBuild`=25549 WHERE `Entry`=120068;
UPDATE `creature_template_wdb` SET `HpMulti`='15.00938', `VerifiedBuild`=25549 WHERE `Entry`=121193;
UPDATE `creature_template_wdb` SET `DisplayId1`=1126, `VerifiedBuild`=25549 WHERE `Entry`=55370;
UPDATE `creature_template_wdb` SET `Classification`=1, `HpMulti`='30', `VerifiedBuild`=25549 WHERE `Entry`=120158;
UPDATE `creature_template_wdb` SET `HpMulti`='70', `VerifiedBuild`=25549 WHERE `Entry`=120182;
UPDATE `creature_template_wdb` SET `HpMulti`='676', `MovementInfoID`=912, `VerifiedBuild`=25549 WHERE `Entry`=119072;
UPDATE `creature_template_wdb` SET `HpMulti`='1456', `VerifiedBuild`=25549 WHERE `Entry`=115767;
UPDATE `creature_template_wdb` SET `DisplayId1`=328, `DisplayId2`=21072, `VerifiedBuild`=25549 WHERE `Entry`=45396;
UPDATE `creature_template_wdb` SET `HpMulti`='75', `VerifiedBuild`=25549 WHERE `Entry`=118022;
UPDATE `creature_template_wdb` SET `HpMulti`='25.5092', `VerifiedBuild`=25549 WHERE `Entry`=115795;
UPDATE `creature_template_wdb` SET `DisplayId1`=76582, `VerifiedBuild`=25549 WHERE `Entry`=120270;
UPDATE `creature_template_wdb` SET `TypeFlags`=270532680, `HpMulti`='145', `VerifiedBuild`=25549 WHERE `Entry`=121400;
UPDATE `creature_template_wdb` SET `HpMulti`='1845', `VerifiedBuild`=25549 WHERE `Entry`=116939;
UPDATE `creature_template_wdb` SET `HpMulti`='1189.19', `VerifiedBuild`=25549 WHERE `Entry`=115844;
UPDATE `creature_template_wdb` SET `TypeFlags`=2097256, `HpMulti`='30.01876', `VerifiedBuild`=25549 WHERE `Entry`=119206;
UPDATE `creature_template_wdb` SET `HpMulti`='90', `VerifiedBuild`=25549 WHERE `Entry`=121473;
UPDATE `creature_template_wdb` SET `HpMulti`='8.1648', `VerifiedBuild`=25549 WHERE `Entry`=115902;
UPDATE `creature_template_wdb` SET `MovementInfoID`=94, `VerifiedBuild`=25549 WHERE `Entry`=120463;
UPDATE `creature_template_wdb` SET `HpMulti`='65', `MovementInfoID`=144, `VerifiedBuild`=25549 WHERE `Entry`=117123;
UPDATE `creature_template_wdb` SET `HpMulti`='20', `VerifiedBuild`=25549 WHERE `Entry`=120516;
UPDATE `creature_template_wdb` SET `DisplayId1`=74526, `HpMulti`='6', `VerifiedBuild`=25549 WHERE `Entry`=101527;
UPDATE `creature_template_wdb` SET `TypeFlags2`=16, `VerifiedBuild`=25549 WHERE `Entry`=60199;
UPDATE `creature_template_wdb` SET `DisplayId2`=78177, `VerifiedBuild`=25549 WHERE `Entry`=118286;
UPDATE `creature_template_wdb` SET `TypeFlags`=1, `Family`=160, `VerifiedBuild`=25549 WHERE `Entry`=109351;
UPDATE `creature_template_wdb` SET `HpMulti`='1142', `VerifiedBuild`=25549 WHERE `Entry`=117264;
UPDATE `creature_template_wdb` SET `HpMulti`='2240.27', `VerifiedBuild`=25549 WHERE `Entry`=117269;



INSERT IGNORE INTO `creature_template_wdb_locale` (`ID`, `Locale`, `Name1`, `NameAlt1`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES
(125542, 'ruRU', 'Эль-ахраира', '', 0, 0, 25549),
(124590, 'ruRU', 'Владыка Иллидан Ярость Бури', '', 'Повелитель иллидари', 0, 25549),
(124598, 'ruRU', 'Покоритель миров', '', 0, 0, 25549),
(124815, 'ruRU', 'Ловчий линий Скверны', '', 0, 0, 25549),
(128222, 'ruRU', 'Шпиль злобы', '', 0, 0, 25549),
(123872, 'ruRU', 'Портал Круговерти Пустоты', '', 0, 0, 25549),
(122799, 'ruRU', 'Верховный маг Кадгар', '', 0, 0, 25549),
(122800, 'ruRU', 'Пророк Велен', '', 0, 0, 25549),
(122847, 'ruRU', 'Темная жрица', '', 0, 0, 25549),
(122850, 'ruRU', 'Темная стражница', '', 0, 0, 25549),
(122851, 'ruRU', 'Темная лучница', '', 0, 0, 25549);

UPDATE `creature_template_wdb_locale` SET `Name1`='Бомбометатель "Бей-Молоти"', `VerifiedBuild`=25549 WHERE `ID`=73743 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Алунет', `VerifiedBuild`=25549 WHERE `ID`=111722 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Кил''джеден', `Title`='Искуситель', `VerifiedBuild`=25549 WHERE `ID`=121788 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `VerifiedBuild`=25549 WHERE `ID`=121789 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Покоритель миров', `VerifiedBuild`=25549 WHERE `ID`=121790 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Реактор душ', `VerifiedBuild`=25549 WHERE `ID`=118460 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Королева душ Дехана', `VerifiedBuild`=25549 WHERE `ID`=118462 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Почитательница Элуны', `VerifiedBuild`=25549 WHERE `ID`=120697 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Золотой банан', `VerifiedBuild`=25549 WHERE `ID`=60383 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `VerifiedBuild`=25549 WHERE `ID`=120705 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Бесконечные сокровища', `VerifiedBuild`=25549 WHERE `ID`=99489 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Бесконечные сокровища', `VerifiedBuild`=25549 WHERE `ID`=99490 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Бесконечные сокровища', `VerifiedBuild`=25549 WHERE `ID`=99492 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Бесконечные сокровища', `VerifiedBuild`=25549 WHERE `ID`=99495 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Лунная жрица', `VerifiedBuild`=25549 WHERE `ID`=120719 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Бесконечные сокровища', `VerifiedBuild`=25549 WHERE `ID`=99496 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Лунная стражница', `VerifiedBuild`=25549 WHERE `ID`=120720 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Лунная лучница', `VerifiedBuild`=25549 WHERE `ID`=120721 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Бесконечные сокровища', `VerifiedBuild`=25549 WHERE `ID`=99499 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Жрица Лунное Пламя', `VerifiedBuild`=25549 WHERE `ID`=118518 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Охотница Каспария', `VerifiedBuild`=25549 WHERE `ID`=118523 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Страж Хранительницы', `Title`='Создание Эгвин', `VerifiedBuild`=25549 WHERE `ID`=120777 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Ловушка Эгвин', `VerifiedBuild`=25549 WHERE `ID`=120784 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Лейтенант Серебряная Мощь', `VerifiedBuild`=25549 WHERE `ID`=120789 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Остаток надежды', `VerifiedBuild`=25549 WHERE `ID`=118562 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Вечный страж', `VerifiedBuild`=25549 WHERE `ID`=91756 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `VerifiedBuild`=25549 WHERE `ID`=92879 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Лилт Тихая', `VerifiedBuild`=25549 WHERE `ID`=120808 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Симулякр', `VerifiedBuild`=25549 WHERE `ID`=116369 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Armageddon Stalker (Small)', `VerifiedBuild`=25549 WHERE `ID`=120839 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Проекция Эгвин', `VerifiedBuild`=25549 WHERE `ID`=119723 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Верховный маг Кадгар', `VerifiedBuild`=25549 WHERE `ID`=119726 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Пророк Велен', `VerifiedBuild`=25549 WHERE `ID`=119728 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Иллидан Ярость Бури', `VerifiedBuild`=25549 WHERE `ID`=119729 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Майев Песнь Теней', `VerifiedBuild`=25549 WHERE `ID`=119730 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Дух ветра', `VerifiedBuild`=25549 WHERE `ID`=99625 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Гарпунер из клана Колец Ненависти', `VerifiedBuild`=25549 WHERE `ID`=107447 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Повелительница гиппогрифов Вара', `VerifiedBuild`=25549 WHERE `ID`=120851 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Кил''джеден', `Title`='Искуситель', `VerifiedBuild`=25549 WHERE `ID`=120867 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Шерстелобик', `VerifiedBuild`=25549 WHERE `ID`=61667 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Желтый воздушный шар', `VerifiedBuild`=25549 WHERE `ID`=56083 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Фрагмент созидания', `VerifiedBuild`=25549 WHERE `ID`=118640 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Харджатан', `Title`='Молотильщик', `VerifiedBuild`=25549 WHERE `ID`=116407 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Фрагмент разрушения', `VerifiedBuild`=25549 WHERE `ID`=118643 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Хакмуд c Аргуса', `Title`='Странствующий торговец', `VerifiedBuild`=25549 WHERE `ID`=32638 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Гнимо', `Title`='Странствующий механик', `VerifiedBuild`=25549 WHERE `ID`=32639 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Солдат Армии погибели Легиона', `NameAlt1`='Солдат Армии погибели Легиона', `VerifiedBuild`=25549 WHERE `ID`=119768 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Дурган Камнепад', `Title`='Рассекатель туч', `VerifiedBuild`=25549 WHERE `ID`=119777 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Мистик Птицекров', `Title`='Трансмогрификатор', `VerifiedBuild`=25549 WHERE `ID`=62821 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Братец Вялые Руки', `Title`='Странствующий торговец', `VerifiedBuild`=25549 WHERE `ID`=62822 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Житель Нар''таласа', `NameAlt1`='Жительница Нар''таласа', `VerifiedBuild`=25549 WHERE `ID`=89634 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Чаша духов', `VerifiedBuild`=25549 WHERE `ID`=118699 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Чаша духов', `VerifiedBuild`=25549 WHERE `ID`=118701 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Порождение Змеикса', `VerifiedBuild`=25549 WHERE `ID`=108655 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Гладиатор из племени Острозубов', `VerifiedBuild`=25549 WHERE `ID`=117596 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Оживленный храмовник', `VerifiedBuild`=25549 WHERE `ID`=118715 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Спиритический барьер', `VerifiedBuild`=25549 WHERE `ID`=118727 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Призрачный страж костей', `VerifiedBuild`=25549 WHERE `ID`=118728 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='', `VerifiedBuild`=25549 WHERE `ID`=119846 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Падшая жрица', `VerifiedBuild`=25549 WHERE `ID`=118729 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Остаток души', `VerifiedBuild`=25549 WHERE `ID`=118730 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Зеркальное изображение', `VerifiedBuild`=25549 WHERE `ID`=47244 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Сотворенный кролик', `VerifiedBuild`=25549 WHERE `ID`=103098 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Чи-Цзи', `VerifiedBuild`=25549 WHERE `ID`=100868 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Дух койота', `VerifiedBuild`=25549 WHERE `ID`=28267 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Вихрящиеся души', `VerifiedBuild`=25549 WHERE `ID`=120988 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Смотритель гробницы Рез', `VerifiedBuild`=25549 WHERE `ID`=121003 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Мирмидон из племени Острозубов', `VerifiedBuild`=25549 WHERE `ID`=121004 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='', `VerifiedBuild`=25549 WHERE `ID`=118773 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Ведьма из клана Волнистой Чешуи', `VerifiedBuild`=25549 WHERE `ID`=121011 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Солдат Армии погибели Легиона', `NameAlt1`='Солдат Армии погибели Легиона', `VerifiedBuild`=25549 WHERE `ID`=121023 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Страж Скверны - завоеватель', `VerifiedBuild`=25549 WHERE `ID`=121024 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Чайка', `VerifiedBuild`=25549 WHERE `ID`=121028 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Преследователь в сетке', `VerifiedBuild`=25549 WHERE `ID`=117679 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Фан''верг Порочная', `VerifiedBuild`=25549 WHERE `ID`=121030 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Волномаг из племени Острозубов', `VerifiedBuild`=25549 WHERE `ID`=116569 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Донный мурлок', `VerifiedBuild`=25549 WHERE `ID`=121047 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Водяной пузырь', `VerifiedBuild`=25549 WHERE `ID`=121072 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Скрог клана Колец Ненависти', `VerifiedBuild`=25549 WHERE `ID`=89802 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Порабощенный мурлок', `VerifiedBuild`=25549 WHERE `ID`=89811 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Приливный камень Голганнета', `VerifiedBuild`=25549 WHERE `ID`=121105 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Слезы Элуны', `VerifiedBuild`=25549 WHERE `ID`=121110 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Молот Каз''горота', `VerifiedBuild`=25549 WHERE `ID`=121111 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Присягнувший Скверне разрушитель чар', `VerifiedBuild`=25549 WHERE `ID`=117769 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Чернокнижник из Совета Теней', `VerifiedBuild`=25549 WHERE `ID`=117776 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='', `VerifiedBuild`=25549 WHERE `ID`=118894 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Эредарская волшебница крови', `VerifiedBuild`=25549 WHERE `ID`=117782 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Водоросляк', `VerifiedBuild`=25549 WHERE `ID`=120021 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Бандинот', `VerifiedBuild`=25549 WHERE `ID`=63062 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Благовония из серебряного шалфея', `VerifiedBuild`=25549 WHERE `ID`=65298 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Атриган', `Title`='Главный мучитель', `VerifiedBuild`=25549 WHERE `ID`=116689 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Белак', `Title`='Главный тюремщик Скверны', `VerifiedBuild`=25549 WHERE `ID`=116691 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Иксаллон Душегуб', `VerifiedBuild`=25549 WHERE `ID`=118930 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Испепелитель', `VerifiedBuild`=25549 WHERE `ID`=94358 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Драконья черепаха', `VerifiedBuild`=25549 WHERE `ID`=89891 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Статуя Нефритовой Змеи', `VerifiedBuild`=25549 WHERE `ID`=60849 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Иллидан Ярость Бури', `VerifiedBuild`=25549 WHERE `ID`=121169 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Пророк Велен', `VerifiedBuild`=25549 WHERE `ID`=121170 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Верховный маг Кадгар', `VerifiedBuild`=25549 WHERE `ID`=121171 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Испепелитель', `VerifiedBuild`=25549 WHERE `ID`=94365 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Дух огня', `VerifiedBuild`=25549 WHERE `ID`=69791 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Дух земли', `VerifiedBuild`=25549 WHERE `ID`=69792 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Прыткий сурок', `VerifiedBuild`=25549 WHERE `ID`=65325 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Госпожа Сашж''ин', `Title`='Матерь Глубин', `VerifiedBuild`=25549 WHERE `ID`=121184 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Плевательница Шу-шэня', `VerifiedBuild`=25549 WHERE `ID`=65334 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Предводительница ведьм Магора', `VerifiedBuild`=25549 WHERE `ID`=120068 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Гор''лок Мясоруб', `VerifiedBuild`=25549 WHERE `ID`=116721 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Госпожа Сашж''ин', `Title`='Матерь Глубин', `VerifiedBuild`=25549 WHERE `ID`=121190 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Темная душа', `VerifiedBuild`=25549 WHERE `ID`=121193 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Арги', `VerifiedBuild`=25549 WHERE `ID`=88807 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Иллидан Ярость Бури', `VerifiedBuild`=25549 WHERE `ID`=121227 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Тотем гармонии', `VerifiedBuild`=25549 WHERE `ID`=65387 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Аномальное свечение', `VerifiedBuild`=25549 WHERE `ID`=120131 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Аномальная Скверна', `VerifiedBuild`=25549 WHERE `ID`=120132 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Серый мотылек', `VerifiedBuild`=25549 WHERE `ID`=62050 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Напиток Цзиня Теплого Бочонка', `VerifiedBuild`=25549 WHERE `ID`=65409 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Вековечный защитник', `VerifiedBuild`=25549 WHERE `ID`=120153 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `VerifiedBuild`=25549 WHERE `ID`=55370 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Ксал''атат', `VerifiedBuild`=25549 WHERE `ID`=111221 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Нестабильная порча', `VerifiedBuild`=25549 WHERE `ID`=120158 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Лавовый ловец', `VerifiedBuild`=25549 WHERE `ID`=117931 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Цель Копья', `VerifiedBuild`=25549 WHERE `ID`=119054 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Измученная жрица', `VerifiedBuild`=25549 WHERE `ID`=120182 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Стенающая душа', `VerifiedBuild`=25549 WHERE `ID`=120188 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Сонм страданий', `VerifiedBuild`=25549 WHERE `ID`=119072 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Вечный страж душ', `VerifiedBuild`=25549 WHERE `ID`=120191 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Замученная душа', `VerifiedBuild`=25549 WHERE `ID`=117957 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Пираньядо', `VerifiedBuild`=25549 WHERE `ID`=116841 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Призрачная послушница', `VerifiedBuild`=25549 WHERE `ID`=120194 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Защитница Рощи Снов', `VerifiedBuild`=25549 WHERE `ID`=119077 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Сарукел', `Title`='Неутолимый Голод', `VerifiedBuild`=25549 WHERE `ID`=116843 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Парящая душа', `VerifiedBuild`=25549 WHERE `ID`=120196 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Призрачный страж', `VerifiedBuild`=25549 WHERE `ID`=120201 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Иллидан Ярость Бури', `VerifiedBuild`=25549 WHERE `ID`=117974 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Передатчик послания', `VerifiedBuild`=25549 WHERE `ID`=88940 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Архимонд', `Title`='Осквернитель', `VerifiedBuild`=25549 WHERE `ID`=85589 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Оссенет', `Title`='Тьма', `VerifiedBuild`=25549 WHERE `ID`=116881 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Госпожа Сашж''ин', `Title`='Матерь Глубин', `VerifiedBuild`=25549 WHERE `ID`=115767 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `VerifiedBuild`=25549 WHERE `ID`=45396 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `VerifiedBuild`=25549 WHERE `ID`=120240 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Период цветения', `VerifiedBuild`=25549 WHERE `ID`=47649 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Инфернал - вестник хаоса', `VerifiedBuild`=25549 WHERE `ID`=118022 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Ловец из бездны', `VerifiedBuild`=25549 WHERE `ID`=115795 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Дух Нетрезаара', `VerifiedBuild`=25549 WHERE `ID`=120265 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Демонический обелиск', `VerifiedBuild`=25549 WHERE `ID`=120270 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Оскверненный клинок', `VerifiedBuild`=25549 WHERE `ID`=119158 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Инквизитор Себилий', `VerifiedBuild`=25549 WHERE `ID`=121399 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Обвинитель Гнаж', `VerifiedBuild`=25549 WHERE `ID`=121400 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Пророк Велен', `VerifiedBuild`=25549 WHERE `ID`=118052 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Юй-лун', `Title`='Нефритовая Змея', `VerifiedBuild`=25549 WHERE `ID`=101297 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Аватара Падшего', `VerifiedBuild`=25549 WHERE `ID`=116939 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Охотник глубин из клана Колец Ненависти', `VerifiedBuild`=25549 WHERE `ID`=89024 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Воспевательница зла из клана Колец Ненависти', `VerifiedBuild`=25549 WHERE `ID`=89025 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Ксал''атат', `VerifiedBuild`=25549 WHERE `ID`=111374 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Горот', `Title`='Пораженный огнем Скверны', `VerifiedBuild`=25549 WHERE `ID`=115844 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Лунный Коготь', `VerifiedBuild`=25549 WHERE `ID`=119205 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Взрывное отражение', `VerifiedBuild`=25549 WHERE `ID`=119206 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Инфернальный шип', `VerifiedBuild`=25549 WHERE `ID`=116976 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Принудительница Никса', `VerifiedBuild`=25549 WHERE `ID`=121473 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Красноголовая цапля', `VerifiedBuild`=25549 WHERE `ID`=105838 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Тлеющий ловец', `VerifiedBuild`=25549 WHERE `ID`=115892 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Электризующая медуза', `VerifiedBuild`=25549 WHERE `ID`=115896 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Сонм страданий', `VerifiedBuild`=25549 WHERE `ID`=120368 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Волноход из племени Острозубов', `VerifiedBuild`=25549 WHERE `ID`=115902 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Душа Акаари', `VerifiedBuild`=25549 WHERE `ID`=105850 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Молот Каз''горота', `VerifiedBuild`=25549 WHERE `ID`=121494 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Слезы Элуны', `VerifiedBuild`=25549 WHERE `ID`=121495 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Приливный камень Голганнета', `VerifiedBuild`=25549 WHERE `ID`=121496 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Сумеречная душа', `VerifiedBuild`=25549 WHERE `ID`=121498 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Разлом Пустоты', `VerifiedBuild`=25549 WHERE `ID`=120390 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Лунный охотник', `VerifiedBuild`=25549 WHERE `ID`=118182 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Защитные контрмеры', `VerifiedBuild`=25549 WHERE `ID`=120449 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Скверноботик', `VerifiedBuild`=25549 WHERE `ID`=101462 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Подводный надзиратель', `VerifiedBuild`=25549 WHERE `ID`=120463 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `VerifiedBuild`=25549 WHERE `ID`=54569 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Боец из клана Волнистой Чешуи', `VerifiedBuild`=25549 WHERE `ID`=120473 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Легионер из клана Волнистой Чешуи', `VerifiedBuild`=25549 WHERE `ID`=117123 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Ловец из глубин', `VerifiedBuild`=25549 WHERE `ID`=120477 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Хвостодер из клана Колец Ненависти', `VerifiedBuild`=25549 WHERE `ID`=88086 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Призывательница штормов из клана Колец Ненависти', `VerifiedBuild`=25549 WHERE `ID`=88087 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Зовущая море из клана Волнистой Чешуи', `VerifiedBuild`=25549 WHERE `ID`=120482 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Брешь', `VerifiedBuild`=25549 WHERE `ID`=121605 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Морской кроколиск', `VerifiedBuild`=25549 WHERE `ID`=118255 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Нага-громила', `VerifiedBuild`=25549 WHERE `ID`=91459 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Послушник из племени Острозубов', `VerifiedBuild`=25549 WHERE `ID`=117154 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Эгида Агграмара', `VerifiedBuild`=25549 WHERE `ID`=121630 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Тотем ветряного порыва', `VerifiedBuild`=25549 WHERE `ID`=121633 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Быстроплав из племени Острозубов', `VerifiedBuild`=25549 WHERE `ID`=120516 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Блескотрон-6000', `VerifiedBuild`=25549 WHERE `ID`=101527 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Руна мощи', `VerifiedBuild`=25549 WHERE `ID`=60199 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Теневой скакун Оливкового покрова', `VerifiedBuild`=25549 WHERE `ID`=109349 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Пираньядо', `VerifiedBuild`=25549 WHERE `ID`=118286 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Скрытный лесной хищник', `VerifiedBuild`=25549 WHERE `ID`=109351 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Блог Бледный', `VerifiedBuild`=25549 WHERE `ID`=93714 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Бдительная дева', `VerifiedBuild`=25549 WHERE `ID`=118289 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Ползучий бурошкур', `VerifiedBuild`=25549 WHERE `ID`=93725 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Титаническая аномалия', `VerifiedBuild`=25549 WHERE `ID`=120552 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Присягнувший Скверне мучитель', `NameAlt1`='Присягнувшая Скверне мучительница', `VerifiedBuild`=25549 WHERE `ID`=118322 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Освящение', `VerifiedBuild`=25549 WHERE `ID`=43499 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Зеркальное изображение', `VerifiedBuild`=25549 WHERE `ID`=31216 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Тал''киэль', `VerifiedBuild`=25549 WHERE `ID`=121712 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Огненный фамилиар', `VerifiedBuild`=25549 WHERE `ID`=64747 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Тал''киэль', `VerifiedBuild`=25549 WHERE `ID`=121717 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Тал''киэль', `VerifiedBuild`=25549 WHERE `ID`=121718 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Тал''киэль', `VerifiedBuild`=25549 WHERE `ID`=121719 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Тал''киэль', `VerifiedBuild`=25549 WHERE `ID`=121720 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Тал''киэль', `VerifiedBuild`=25549 WHERE `ID`=121721 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Страж ужаса', `VerifiedBuild`=25549 WHERE `ID`=78158 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Капитан Ята Лунный Удар', `VerifiedBuild`=25549 WHERE `ID`=118374 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Тал''киэль', `VerifiedBuild`=25549 WHERE `ID`=121728 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Доблестная дева', `VerifiedBuild`=25549 WHERE `ID`=117264 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Кил''джеден', `Title`='Искуситель', `VerifiedBuild`=25549 WHERE `ID`=117269 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Удерживающий пилон', `VerifiedBuild`=25549 WHERE `ID`=117279 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Бандинот', `VerifiedBuild`=25549 WHERE `ID`=64782 AND `Locale`='ruRU';

DELETE FROM `conversation_data` WHERE (`entry`=4808 AND `id`=10732) OR (`entry`=5002 AND `id`=11149) OR (`entry`=4813 AND `id`=10741) OR (`entry`=4813 AND `id`=10740) OR (`entry`=5015 AND `id`=11187) OR (`entry`=4929 AND `id`=10951) OR (`entry`=4813 AND `id`=10737) OR (`entry`=5027 AND `id`=11223) OR (`entry`=4955 AND `id`=11006) OR (`entry`=4929 AND `id`=10950) OR (`entry`=5027 AND `id`=11222) OR (`entry`=4955 AND `id`=11005) OR (`entry`=4813 AND `id`=10739) OR (`entry`=5027 AND `id`=11221) OR (`entry`=5002 AND `id`=11152) OR (`entry`=5048 AND `id`=11264) OR (`entry`=4955 AND `id`=11004) OR (`entry`=4813 AND `id`=10738) OR (`entry`=5048 AND `id`=11265) OR (`entry`=5048 AND `id`=11266) OR (`entry`=4810 AND `id`=10734) OR (`entry`=5048 AND `id`=11267) OR (`entry`=5048 AND `id`=11268) OR (`entry`=4951 AND `id`=10990) OR (`entry`=5048 AND `id`=11262);
DELETE FROM `conversation_data` WHERE (`entry`=4951 AND `id`=10989) OR (`entry`=5048 AND `id`=11263) OR (`entry`=4951 AND `id`=10988) OR (`entry`=4809 AND `id`=10733) OR (`entry`=4951 AND `id`=10987) OR (`entry`=4951 AND `id`=10986) OR (`entry`=4951 AND `id`=10985) OR (`entry`=5013 AND `id`=11181) OR (`entry`=4963 AND `id`=11043) OR (`entry`=5013 AND `id`=11183) OR (`entry`=4807 AND `id`=10731) OR (`entry`=5013 AND `id`=11182) OR (`entry`=4807 AND `id`=10730) OR (`entry`=4963 AND `id`=11045) OR (`entry`=4963 AND `id`=11044) OR (`entry`=4812 AND `id`=10736) OR (`entry`=5014 AND `id`=11184) OR (`entry`=5003 AND `id`=11155) OR (`entry`=4955 AND `id`=11011) OR (`entry`=4899 AND `id`=10895) OR (`entry`=4955 AND `id`=11010) OR (`entry`=4899 AND `id`=10894) OR (`entry`=4955 AND `id`=11009) OR (`entry`=5003 AND `id`=11156) OR (`entry`=4955 AND `id`=11008);
DELETE FROM `conversation_data` WHERE (`entry`=4811 AND `id`=10735) OR (`entry`=4955 AND `id`=11015) OR (`entry`=5170 AND `id`=11566) OR (`entry`=4955 AND `id`=11014) OR (`entry`=4955 AND `id`=11013) OR (`entry`=4955 AND `id`=11012) OR (`entry`=4899 AND `id`=10896) OR (`entry`=5016 AND `id`=11188) OR (`entry`=5002 AND `id`=11150) OR (`entry`=5002 AND `id`=11151);
REPLACE INTO `conversation_data` (`entry`, `id`, `idx`, `textId`, `unk1`, `unk2`) VALUES
(4808, 10732, 0, 0, 296, 0),
(5002, 11149, 0, 0, 0, 0),
(4813, 10741, 4, 55803, 0, 1),
(4813, 10740, 3, 43603, 0, 3),
(5015, 11187, 0, 0, 20, 0),
(4929, 10951, 1, 9063, 273016968, 1),
(4813, 10737, 0, 0, 0, 0),
(5027, 11223, 1, 6459, 0, 1),
(4955, 11006, 2, 17270, 0, 2),
(4929, 10950, 0, 0, 273016968, 0),
(5027, 11222, 2, 15885, 0, 2),
(4955, 11005, 1, 12076, 0, 1),
(4813, 10739, 2, 22587, 0, 2),
(5027, 11221, 0, 0, 0, 0),
(5002, 11152, 3, 31845, 0, 1),
(5048, 11264, 2, 15732, 1, 0),
(4955, 11004, 0, 0, 0, 0),
(4813, 10738, 1, 17041, 0, 1),
(5048, 11265, 3, 24852, 1, 1),
(5048, 11266, 4, 38525, 1, 0),
(4810, 10734, 0, 0, 84, 0),
(5048, 11267, 5, 41602, 1, 1),
(5048, 11268, 6, 54538, 1, 0),
(4951, 10990, 5, 56922, 71233888, 2),
(5048, 11262, 0, 0, 1, 0),
(4951, 10989, 4, 53834, 71233888, 2),
(5048, 11263, 1, 8136, 1, 1),
(4951, 10988, 3, 37345, 71233888, 1),
(4809, 10733, 0, 0, 84, 0),
(4951, 10987, 2, 21581, 71233888, 1),
(4951, 10986, 1, 7757, 71233888, 1),
(4951, 10985, 0, 0, 71233888, 0),
(5013, 11181, 0, 0, 0, 0),
(4963, 11043, 0, 0, 71244016, 0),
(5013, 11183, 2, 5710, 0, 2),
(4807, 10731, 1, 10615, 296, 540672000),
(5013, 11182, 1, 2784, 0, 1),
(4807, 10730, 0, 0, 296, 0),
(4963, 11045, 2, 11456, 71244016, 0),
(4963, 11044, 1, 6135, 71244016, 1),
(4812, 10736, 0, 0, 84, 0),
(5014, 11184, 0, 0, 71232608, 0),
(5003, 11155, 0, 0, 194, 0),
(4955, 11011, 6, 59857, 0, 3),
(4899, 10895, 1, 15763, 0, 256),
(4955, 11010, 5, 50492, 0, 2),
(4899, 10894, 0, 0, 0, 256),
(4955, 11009, 4, 44545, 0, 3),
(5003, 11156, 1, 10451, 194, 1),
(4955, 11008, 3, 26843, 0, 0),
(4811, 10735, 0, 0, 84, 0),
(4955, 11015, 10, 104800, 0, 1),
(5170, 11566, 0, 0, 297, 0),
(4955, 11014, 9, 94087, 0, 3),
(4955, 11013, 8, 78977, 0, 1),
(4955, 11012, 7, 62880, 0, 1),
(4899, 10896, 2, 31251, 0, 256),
(5016, 11188, 0, 0, 0, 0),
(5002, 11150, 1, 8043, 0, 1),
(5002, 11151, 2, 20156, 0, 0);


DELETE FROM `conversation_creature` WHERE (`entry`=4899 AND `id`=0) OR (`entry`=5003 AND `id`=1) OR (`entry`=5003 AND `id`=0) OR (`entry`=5016 AND `id`=0) OR (`entry`=4929 AND `id`=1) OR (`entry`=4929 AND `id`=0) OR (`entry`=4813 AND `id`=1) OR (`entry`=4813 AND `id`=0) OR (`entry`=4813 AND `id`=3) OR (`entry`=4813 AND `id`=2) OR (`entry`=4963 AND `id`=1) OR (`entry`=4963 AND `id`=0) OR (`entry`=5013 AND `id`=1) OR (`entry`=5013 AND `id`=0) OR (`entry`=4955 AND `id`=3) OR (`entry`=4955 AND `id`=2) OR (`entry`=5013 AND `id`=2) OR (`entry`=4955 AND `id`=1) OR (`entry`=4955 AND `id`=0) OR (`entry`=4951 AND `id`=2) OR (`entry`=4951 AND `id`=1) OR (`entry`=4951 AND `id`=0) OR (`entry`=5014 AND `id`=0) OR (`entry`=5002 AND `id`=0) OR (`entry`=5027 AND `id`=2);
DELETE FROM `conversation_creature` WHERE (`entry`=5002 AND `id`=1) OR (`entry`=5027 AND `id`=1) OR (`entry`=5027 AND `id`=0) OR (`entry`=5048 AND `id`=0) OR (`entry`=5048 AND `id`=1) OR (`entry`=5015 AND `id`=0);
REPLACE INTO `conversation_creature` (`entry`, `id`, `creatureId`, `creatureGuid`, `duration`, `unk1`, `unk2`) VALUES
(4899, 0, 120867, 5951582, 42242, 0, 0),
(5003, 1, 116691, 5951582, 19303, 0, 0),
(5003, 0, 116689, 5951582, 19303, 0, 0),
(5016, 0, 118518, 5951582, 4023, 0, 0),
(4929, 1, 120867, 5955509, 25570, 0, 0),
(4929, 0, 121170, 5955517, 25570, 0, 0),
(4813, 1, 119726, 5951583, 69591, 0, 0),
(4813, 0, 119723, 5952243, 69591, 0, 0),
(4813, 3, 119728, 5951584, 69591, 0, 0),
(4813, 2, 119729, 5951583, 69591, 0, 0),
(4963, 1, 116407, 5951582, 15377, 0, 0),
(4963, 0, 121184, 5951582, 15377, 0, 0),
(5013, 1, 118518, 5951582, 9284, 0, 0),
(5013, 0, 118523, 5951582, 9284, 0, 0),
(4955, 3, 121171, 5955517, 113842, 0, 0),
(4955, 2, 121170, 5955517, 113842, 0, 0),
(5013, 2, 118374, 5951582, 9284, 0, 0),
(4955, 1, 121169, 5955517, 113842, 0, 0),
(4955, 0, 120867, 5955509, 113842, 0, 0),
(4951, 2, 119726, 5951583, 64783, 0, 0),
(4951, 1, 119723, 5952243, 64783, 0, 0),
(4951, 0, 119729, 5951583, 64783, 0, 0),
(5014, 0, 118374, 5951582, 4632, 0, 0),
(5002, 0, 116689, 5951582, 40504, 0, 0),
(5027, 2, 118523, 5951582, 22295, 0, 0),
(5002, 1, 116691, 5951582, 40504, 0, 0),
(5027, 1, 118374, 5951582, 22295, 0, 0),
(5027, 0, 118518, 5951582, 22295, 0, 0),
(5048, 0, 118052, 5951582, 69588, 0, 0),
(5048, 1, 121788, 5951582, 69588, 0, 0),
(5015, 0, 118518, 5951582, 3436, 0, 0);


DELETE FROM `conversation_actor` WHERE (`entry`=4807 AND `id`=0) OR (`entry`=4808 AND `id`=0) OR (`entry`=4809 AND `id`=0) OR (`entry`=4810 AND `id`=0) OR (`entry`=4811 AND `id`=0) OR (`entry`=4812 AND `id`=0) OR (`entry`=5170 AND `id`=0);
REPLACE INTO `conversation_actor` (`entry`, `id`, `actorId`, `creatureId`, `displayId`, `unk1`, `unk2`, `unk3`, `duration`) VALUES
(4807, 0, 57715, 119729, 75059, 0, 1, 0, 18607),
(4808, 0, 57715, 119729, 75059, 0, 1, 0, 17308),
(4809, 0, 57712, 119723, 76079, 0, 1, 0, 12753),
(4810, 0, 57712, 119723, 76079, 0, 1, 0, 12868),
(4811, 0, 57712, 119723, 76079, 0, 1, 0, 13214),
(4812, 0, 57712, 119723, 76079, 0, 1, 0, 10381),
(5170, 0, 58365, 121227, 27571, 0, 1, 0, 6611);


DELETE FROM `gameobject` WHERE `map` in (1676);

SELECT @CGUID := `guid`+1 FROM `gameobject` ORDER BY `gameobject`.`guid` DESC limit 1;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+90;
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `AiID`) VALUES
('@OGUID+0', 269192, 1676, 0, 0, 245760, '', 5937.457, -879.8716, 2920.775, 2.420397, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Дверь в вестибюль (Area: Tomb of Sargeras)
('@OGUID+1', 269120, 1676, 0, 0, 245760, '', 5935.24, -949.2632, 2920.025, 0.5109373, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Дверь в покои госпожи (Area: Tomb of Sargeras)
('@OGUID+2', 269974, 1676, 0, 0, 245760, '', 6010.043, -793.4874, 2973.959, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Doodad_6FX_Firewall_DoorSMFel002 (Area: Tomb of Sargeras)
('@OGUID+3', 269973, 1676, 0, 0, 245760, '', 6099.743, -856.0253, 2974.152, 4.71239, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Doodad_6FX_Firewall_DoorSMFel001 (Area: Tomb of Sargeras)
('@OGUID+4', 269840, 1676, 0, 0, 245760, '', 6087.842, -927.6913, 2976.787, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Древний переключатель (Area: Tomb of Sargeras)
('@OGUID+5', 269838, 1676, 0, 0, 245760, '', 6112.478, -733.6039, 2984.402, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269838 (Area: Tomb of Sargeras)
('@OGUID+6', 268752, 1676, 0, 0, 245760, '', 5987.114, -1017.305, 2927.477, 3.77578, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+7', 272802, 1676, 0, 0, 245760, '', 6112.376, -733.7028, 2984.274, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 272802 (Area: Tomb of Sargeras)
('@OGUID+8', 253126, 1676, 0, 0, 245760, '', 5831.302, -796.2049, 2957.74, 0.004934316, 0, 0, 0, 1, 604800, 255, 1, 0), -- Instance Portal (Area: Tomb of Sargeras)
('@OGUID+9', 268514, 1676, 0, 0, 245760, '', 6101.104, -919.1578, 2998.948, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+10', 269259, 1676, 0, 0, 245760, '', 5906.929, -928.6493, 2863.702, 5.512276, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Орочья руна (Area: Tomb of Sargeras)
('@OGUID+11', 269256, 1676, 0, 0, 245760, '', 5964.035, -845.1113, 2982.594, 0.583428, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Орочья руна (Area: Tomb of Sargeras)
('@OGUID+12', 269164, 1676, 0, 0, 245760, '', 6221.104, -795.7595, 2974.113, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Алтарь (Area: Tomb of Sargeras)
('@OGUID+13', 269975, 1676, 0, 0, 245760, '', 6194.761, -795.798, 2973.522, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Doodad_7DU_TombofSargeras_FireDoor01 (Area: Tomb of Sargeras)
('@OGUID+14', 269976, 1676, 0, 0, 245760, '', 5825.933, -1216.871, 2787.371, 0.8726639, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Водяная дверь (Area: Tomb of Sargeras)
('@OGUID+15', 270940, 1676, 0, 0, 245760, '', 5950.437, -1095.415, 2912.443, 2.81584, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+16', 267715, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267715 (Area: Tomb of Sargeras)
('@OGUID+17', 267714, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267714 (Area: Tomb of Sargeras)
('@OGUID+18', 267713, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267713 (Area: Tomb of Sargeras)
('@OGUID+19', 267712, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267712 (Area: Tomb of Sargeras)
('@OGUID+20', 267719, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267719 (Area: Tomb of Sargeras)
('@OGUID+21', 267718, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267718 (Area: Tomb of Sargeras)
('@OGUID+22', 267717, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267717 (Area: Tomb of Sargeras)
('@OGUID+23', 267716, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267716 (Area: Tomb of Sargeras)
('@OGUID+24', 267723, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267723 (Area: Tomb of Sargeras)
('@OGUID+25', 267722, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267722 (Area: Tomb of Sargeras)
('@OGUID+26', 267721, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267721 (Area: Tomb of Sargeras)
('@OGUID+27', 267720, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267720 (Area: Tomb of Sargeras)
('@OGUID+28', 267724, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267724 (Area: Tomb of Sargeras)
('@OGUID+29', 269987, 1676, 0, 0, 245760, '', 6676.665, -804.6313, 1527.098, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Doodad_7DU_TombOfSargeras_Felstorm_Collision001 (Area: Tomb of Sargeras)
('@OGUID+30', 269988, 1676, 0, 0, 245760, '', 6295.383, -795.3216, 2886.927, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Doodad_7DU_TombOfSargeras_Felstorm_Collision002 (Area: Tomb of Sargeras)
('@OGUID+31', 269045, 1676, 0, 0, 245760, '', 6169.401, -1012.846, 2913.108, 5.93412, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269045 (Area: Tomb of Sargeras)
('@OGUID+32', 267703, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267703 (Area: Tomb of Sargeras)
('@OGUID+33', 267702, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267702 (Area: Tomb of Sargeras)
('@OGUID+34', 267701, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267701 (Area: Tomb of Sargeras)
('@OGUID+35', 267700, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267700 (Area: Tomb of Sargeras)
('@OGUID+36', 267707, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267707 (Area: Tomb of Sargeras)
('@OGUID+37', 267706, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267706 (Area: Tomb of Sargeras)
('@OGUID+38', 267705, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267705 (Area: Tomb of Sargeras)
('@OGUID+39', 267704, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267704 (Area: Tomb of Sargeras)
('@OGUID+40', 267711, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267711 (Area: Tomb of Sargeras)
('@OGUID+41', 267710, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267710 (Area: Tomb of Sargeras)
('@OGUID+42', 267709, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267709 (Area: Tomb of Sargeras)
('@OGUID+43', 267708, 1676, 0, 0, 245760, '', 6599.8, -794.1996, 1508.5, 0, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267708 (Area: Tomb of Sargeras)
('@OGUID+44', 269842, 1676, 0, 0, 245760, '', 6260.061, -852.3503, 3041.751, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269842 (Area: Tomb of Sargeras)
('@OGUID+45', 269841, 1676, 0, 0, 245760, '', 6114.529, -927.6913, 2976.787, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Древний переключатель (Area: Tomb of Sargeras)
('@OGUID+46', 269839, 1676, 0, 0, 245760, '', 6146.559, -762.0251, 2970.903, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269839 (Area: Tomb of Sargeras)
('@OGUID+47', 269782, 1676, 0, 0, 245760, '', 5799.276, -1248.567, 2786.034, 4.01426, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269782 (Area: Tomb of Sargeras)
('@OGUID+48', 269781, 1676, 0, 0, 245760, '', 6385.965, -1052.795, 2902.235, 5.678986, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Призрачная преграда (Area: Tomb of Sargeras)
('@OGUID+49', 269780, 1676, 0, 0, 245760, '', 6402.042, -795.7916, 3011.507, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269780 (Area: Tomb of Sargeras)
('@OGUID+50', 268819, 1676, 0, 0, 245760, '', 6243.467, -1001.754, 2923.611, 0.178153, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+51', 268751, 1676, 0, 0, 245760, '', 6152.908, -1083.313, 2892.168, 5.198888, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+52', 268750, 1676, 0, 0, 245760, '', 6188.131, -945.7178, 2892.065, 1.118474, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+53', 268749, 1676, 0, 0, 245760, '', 6354.415, -1030.835, 2909.796, 5.680764, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+54', 268748, 1676, 0, 0, 245760, '', 6289.318, -985.2384, 2909.796, 5.680764, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+55', 268579, 1676, 0, 0, 245760, '', 6341.295, -795.7725, 3037.665, 4.71239, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+56', 268580, 1676, 0, 0, 245760, '', 6289.381, -795.5262, 3029.027, 4.71239, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+57', 268366, 1676, 0, 0, 245760, '', 6133.625, -971.8979, 2959.992, 0.5235979, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+58', 268365, 1676, 0, 0, 245760, '', 6133.636, -1009.464, 2959.992, 2.617989, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+59', 268364, 1676, 0, 0, 245760, '', 6068.479, -1009.354, 2959.992, 3.665196, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Дверь (Area: Tomb of Sargeras)
('@OGUID+60', 272386, 1676, 0, 0, 245760, '', 5828.875, -1273.423, 2788.735, 2.44346, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- 272386 (Area: Tomb of Sargeras)
('@OGUID+61', 272385, 1676, 0, 0, 245760, '', 5769.848, -1224.092, 2788.735, 5.585054, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- 272385 (Area: Tomb of Sargeras)
('@OGUID+62', 272384, 1676, 0, 0, 245760, '', 5774.697, -1278.278, 2788.735, 0.8726639, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- 272384 (Area: Tomb of Sargeras)
('@OGUID+63', 269262, 1676, 0, 0, 245760, '', 6486.747, -795.6044, 1664.717, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Двери склепа (Area: Tomb of Sargeras)
('@OGUID+64', 269261, 1676, 0, 0, 245760, '', 6389.573, -795.6044, 1652.382, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Двери склепа (Area: Tomb of Sargeras)
('@OGUID+65', 267934, 1676, 0, 0, 245760, '', 6607.75, -795.1597, 1661.2, 3.141593, 0, 0, 0, 0, 604800, 255, 1, 0), -- 267934 (Area: Tomb of Sargeras)
('@OGUID+66', 268574, 1676, 0, 0, 245760, '', 6348.021, -795.5745, 1650.51, 1.570796, 0, 0, 1, -0.00000004371139, 604800, 255, 25, 0), -- 0 (Area: Tomb of Sargeras)
('@OGUID+67', 269258, 1676, 0, 0, 245760, '', 6132.23, -937.5658, 2901.712, 4.948084, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Орочья руна (Area: Tomb of Sargeras)
('@OGUID+68', 269260, 1676, 0, 0, 245760, '', 5971.748, -1068.649, 2857.058, 5.23479, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Орочья руна (Area: Tomb of Sargeras)
('@OGUID+69', 269779, 1676, 0, 0, 245760, '', 6438.216, -1089.601, 2881.37, 2.529184, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269779 (Area: Tomb of Sargeras)
('@OGUID+70', 269257, 1676, 0, 0, 245760, '', 6155.16, -1069.225, 2971.071, 3.155597, 0, 0, 1, -0.00000004371139, 604800, 255, 1, 0), -- Орочья руна (Area: Tomb of Sargeras)
('@OGUID+71', 269786, 1676, 0, 0, 245760, '', 6529.752, -839.9936, 1717.042, 5.203736, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269786 (Area: Tomb of Sargeras)
('@OGUID+72', 269785, 1676, 0, 0, 245760, '', 6529.879, -750.2708, 1716.884, 4.182384, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269785 (Area: Tomb of Sargeras)
('@OGUID+73', 269787, 1676, 0, 0, 245760, '', 6561.049, -875.1705, 1714.647, 5.753181, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269787 (Area: Tomb of Sargeras)
('@OGUID+74', 269784, 1676, 0, 0, 245760, '', 6561.286, -716.3622, 1714.76, 3.658791, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269784 (Area: Tomb of Sargeras)
('@OGUID+75', 269790, 1676, 0, 0, 245760, '', 6607.794, -885.5158, 1717.038, 6.276779, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269790 (Area: Tomb of Sargeras)
('@OGUID+76', 269788, 1676, 0, 0, 245760, '', 6608.119, -704.8473, 1717.129, 3.134827, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269788 (Area: Tomb of Sargeras)
('@OGUID+77', 269795, 1676, 0, 0, 245760, '', 6609.039, -683.7684, 1718.977, 6.15863, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269795 (Area: Tomb of Sargeras)
('@OGUID+78', 269794, 1676, 0, 0, 245760, '', 6608.834, -903.899, 1718.364, 3.085218, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269794 (Area: Tomb of Sargeras)
('@OGUID+79', 269791, 1676, 0, 0, 245760, '', 6654.841, -874.2771, 1714.609, 0.517191, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269791 (Area: Tomb of Sargeras)
('@OGUID+80', 269789, 1676, 0, 0, 245760, '', 6655.748, -716.1912, 1713.549, 2.611587, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269789 (Area: Tomb of Sargeras)
('@OGUID+81', 269793, 1676, 0, 0, 245760, '', 6687.193, -750.5946, 1716.661, 2.087987, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269793 (Area: Tomb of Sargeras)
('@OGUID+82', 269792, 1676, 0, 0, 245760, '', 6686.939, -839.8639, 1716.484, 1.04079, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269792 (Area: Tomb of Sargeras)
('@OGUID+83', 269783, 1676, 0, 0, 245760, '', 6753.295, -799.6613, 1535.791, 3.110741, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- 269783 (Area: Tomb of Sargeras)
('@OGUID+84', 270027, 1676, 0, 0, 245760, '', 6674.722, 278.8524, 150, 3.141593, 0, 0, 0, 0, 604800, 255, 1, 0), -- 7.2 Tomb Raid - Avatar Floor (test) - MRN (Area: Tomb of Sargeras)
('@OGUID+85', 269255, 1676, 0, 0, 245760, '', 4522.835, -1301.726, 5335.888, 0.01745246, 0, 0, 0, 1, 604800, 255, 1, 0), -- 269255 (Area: The Twisting Nether)
('@OGUID+86', 271127, 1676, 0, 0, 245760, '', 4534.016, -1448.306, 5382.429, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Doodad_7DU_TombofSargeras_RetractingBridge003 (Area: The Twisting Nether)
('@OGUID+87', 271126, 1676, 0, 0, 245760, '', 4469.374, -1448.353, 5382.328, 3.141593, 0, 0, 1, -0.00000004371139, 604800, 255, 0, 0), -- Doodad_7DU_TombofSargeras_RetractingBridge_Mirrored001 (Area: The Twisting Nether)
('@OGUID+88', 268969, 1676, 0, 0, 245760, '7470 6886 5742 5433 4439', 381.6788, 5467.836, 46.42681, 1.832595, 0, 0, 0, 1, 604800, 255, 1, 0), -- Древняя дверь (Area: Tomb of Sargeras)
('@OGUID+89', 249468, 1676, 0, 0, 245760, '7470 6886 5742 5433 4439', -165.6732, 5976.998, 3.087193, 0.2175326, 0, 0, -0.2376859, 0.9713421, 604800, 255, 1, 0), -- Campfire (Area: Tomb of Sargeras)
('@OGUID+90', 271099, 1676, 0, 0, 245760, '7470 6886 5742 5433 4439', -254.316, 5950.063, 165.6831, 5.570261, 0, 0, 0, 1, 604800, 255, 1, 0); -- Трофеи Падения Легиона (Area: Tomb of Sargeras)

UPDATE `creature_model_info` SET `CombatReach`=1.442308 WHERE `DisplayID`=31;
UPDATE `creature_model_info` SET `CombatReach`=1.530612 WHERE `DisplayID`=1762;


UPDATE `creature_template` SET `ScaleLevelDuration`=100 WHERE `entry`=121004; -- Razorjaw Myrmidon
UPDATE `creature_template` SET `BaseAttackTime`=1757, `unit_class`=1 WHERE `entry`=99904; -- T'uure


UPDATE `creature_model_info` SET `CombatReach`=1.630435 WHERE `DisplayID`=31;
UPDATE `creature_model_info` SET `BoundingRadius`=3.173497 WHERE `DisplayID`=66118;

INSERT IGNORE INTO `creature_template` (`entry`, `trainer_type`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VehicleId`, `HoverHeight`, `InhabitType`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `ControllerID`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `WorldEffects`, `PassiveSpells`, `flags_extra`) VALUES
(121969, 0, 0, 110, 110, 16, 0, 0, 1, 1.428571, 1500, 2000, 1, 32832, 37750784, 0, 0, 1, 7, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Dreadwing
(120357, 0, 0, 110, 110, 1770, 0, 0, 1, 1, 2000, 2000, 1, 0, 0, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Healing Stream Totem
(120996, 0, 0, 113, 113, 16, 0, 0, 5.6, 2, 2000, 2000, 1, 256, 1073743872, 1, 0, 1, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Atrigan
(121021, 0, 0, 111, 111, 2502, 0, 0, 1, 1, 1500, 2000, 2, 570458128, 37750785, 8192, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Doomguard
(121005, 0, 0, 110, 110, 16, 0, 0, 1, 1.428571, 1500, 2000, 1, 33587264, 33556480, 0, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Dreadwing
(117522, 0, 0, 111, 111, 16, 0, 0, 1, 1.428571, 2000, 2000, 1, 33554432, 2048, 1, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Darkscale Taskmaster
(119742, 0, 0, 111, 111, 2502, 0, 0, 1, 1.142857, 1500, 2000, 1, 570425360, 35653633, 8192, 0, 1, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0); -- Felguard Invader

UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1, `faction`=58 WHERE `entry`=113845; -- Totem Mastery
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=119729; -- Lord Illidan Stormrage
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=119730; -- Maiev Shadowsong
UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=117264; -- Maiden of Valor
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=118523; -- Huntress Kasparian
UPDATE `creature_template` SET `unit_flags`=33587200 WHERE `entry`=118518; -- Priestess Lunaspyre
UPDATE `creature_template` SET `unit_flags`=33587968 WHERE `entry`=120477; -- Deep Stalker
UPDATE `creature_template` SET `unit_flags`=570425360, `unit_flags2`=37750785, `unit_flags3`=8192 WHERE `entry`=119768; -- Legionfall Soldier


INSERT IGNORE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`) VALUES
(74496, 18.45296, 12, 0);



UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=121111; -- Hammer of Khaz'goroth
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction`=35, `speed_run`=0.9920629, `RangeAttackTime`=2000, `unit_flags`=512, `unit_flags3`=1, `ScaleLevelDuration`=100, `ControllerID`=-1, `flags_extra`=0 WHERE `entry`=59262; -- Demonic Gateway
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction`=35, `speed_run`=0.9920629, `RangeAttackTime`=2000, `unit_flags`=512, `unit_flags3`=1, `ScaleLevelDuration`=100, `ControllerID`=-1, `flags_extra`=0 WHERE `entry`=59271; -- Demonic Gateway
UPDATE `creature_template` SET `BaseAttackTime`=1555 WHERE `entry`=78158; -- Doomguard

DELETE FROM `conversation_data` WHERE (`entry`=5003 AND `id`=11155) OR (`entry`=5003 AND `id`=11156);
REPLACE INTO `conversation_data` (`entry`, `id`, `idx`, `textId`, `unk1`, `unk2`) VALUES
(5003, 11155, 0, 0, 194, 0),
(5003, 11156, 1, 10451, 194, 1);


DELETE FROM `conversation_creature` WHERE (`entry`=5003 AND `id`=1) OR (`entry`=5003 AND `id`=0);
REPLACE INTO `conversation_creature` (`entry`, `id`, `creatureId`, `creatureGuid`, `duration`, `unk1`, `unk2`) VALUES
(5003, 1, 116691, 5682366, 19303, 0, 0),
(5003, 0, 116689, 5682366, 19303, 0, 0);
UPDATE `creature_template` SET `ScaleLevelDuration`=2000 WHERE `entry`=121004; -- Razorjaw Myrmidon
UPDATE `creature_template_wdb_locale` SET `Name1`='Водяной пузырь', `VerifiedBuild`=25549 WHERE `ID`=121072 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Донный мурлок', `VerifiedBuild`=25549 WHERE `ID`=121047 AND `Locale`='ruRU';

UPDATE `creature_template` SET `unit_flags`=0, `unit_flags3`=0 WHERE `entry`=117596; -- Razorjaw Gladiator
UPDATE `creature_template` SET `unit_flags`=0, `unit_flags3`=0 WHERE `entry`=116569; -- Razorjaw Wavemender
UPDATE `creature_template` SET `faction`=7, `npcflag`=0, `speed_run`=1, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `ScaleLevelDuration`=2000, `ControllerID`=-1 WHERE `entry`=62835; -- Tundra Penguin
UPDATE `creature_template` SET `unit_flags`=33587968 WHERE `entry`=120516; -- Razorjaw Swift-fin
UPDATE `creature_template` SET `unit_class`=4, `unit_flags`=0, `unit_flags2`=71335936, `VehicleId`=5350 WHERE `entry`=101002; -- Krosus
UPDATE `creature_template_wdb` SET `VerifiedBuild`=25549 WHERE `Entry` IN (111554, 110677);
UPDATE `creature_template_wdb` SET `DisplayId1`=74015, `VerifiedBuild`=25549 WHERE `Entry`=104262;
UPDATE `creature_template_wdb` SET `HpMulti`='749.32', `VerifiedBuild`=25549 WHERE `Entry`=101002;

UPDATE `creature_template_wdb_locale` SET `Name1`='Плут пламени Скверны', `VerifiedBuild`=25549 WHERE `ID`=111554 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Раскаленный уголь', `VerifiedBuild`=25549 WHERE `ID`=104262 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Крос', `VerifiedBuild`=25549 WHERE `ID`=101002 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Проекция Кадгара', `VerifiedBuild`=25549 WHERE `ID`=110677 AND `Locale`='ruRU';

UPDATE `creature_model_info` SET `CombatReach`=1.5 WHERE `DisplayID`=70038;
UPDATE `creature_model_info` SET `CombatReach`=5.25 WHERE `DisplayID`=73210;
UPDATE `creature_model_info` SET `BoundingRadius`=0.725, `CombatReach`=1.45 WHERE `DisplayID`=21487;
UPDATE `creature_model_info` SET `CombatReach`=1.725 WHERE `DisplayID`=66246;
UPDATE `creature_model_info` SET `CombatReach`=1.725 WHERE `DisplayID`=66555;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1085, `CombatReach`=2.625 WHERE `DisplayID`=27710;
UPDATE `creature_model_info` SET `CombatReach`=1.725 WHERE `DisplayID`=68890;
UPDATE `creature_model_info` SET `BoundingRadius`=1.65039 WHERE `DisplayID`=64629;
UPDATE `creature_model_info` SET `BoundingRadius`=1.088063, `CombatReach`=1.725 WHERE `DisplayID`=67345;
UPDATE `creature_model_info` SET `CombatReach`=2.32875 WHERE `DisplayID`=69435;
UPDATE `creature_model_info` SET `CombatReach`=1.725 WHERE `DisplayID`=66547;
UPDATE `creature_model_info` SET `BoundingRadius`=1.201863, `CombatReach`=1.5 WHERE `DisplayID`=19285;


UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=104880; -- Thing That Should Not Be
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=112638; -- Astral Defender
UPDATE `creature_template` SET `BaseAttackTime`=1229 WHERE `entry`=47649; -- Efflorescence
UPDATE `creature_template` SET `unit_flags2`=33556480 WHERE `entry`=111303; -- Nightborne Sage
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=116256; -- Victoire
UPDATE `creature_template` SET `npcflag`=0, `ScaleLevelDuration`=100 WHERE `entry`=107997; -- Silgryn
UPDATE `creature_template` SET `InhabitType`=3 WHERE `entry`=115772; -- Kal
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=112718; -- Sidereal Familiar
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=112655; -- Celestial Acolyte
UPDATE `creature_template` SET `faction`=35, `unit_flags`=33554688, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=113383; -- Fallen Defender
UPDATE `creature_template` SET `ScaleLevelMin`=110, `ScaleLevelMax`=110 WHERE `entry`=116372; -- Arluelle
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=110792; -- Archmage Khadgar
UPDATE `creature_template` SET `unit_flags2`=33556480 WHERE `entry`=112595; -- Shal'dorei Archmage
UPDATE `creature_template` SET `unit_flags2`=33556480 WHERE `entry`=112596; -- Duskwatch Warden
UPDATE `creature_template_wdb` SET `VerifiedBuild`=25549 WHERE `Entry` IN (103790, 104688);
UPDATE `creature_template_wdb` SET `HpMulti`='116.592', `VerifiedBuild`=25549 WHERE `Entry`=104880;
UPDATE `creature_template_wdb_locale` SET `Name1`='Корональный выброс', `VerifiedBuild`=25549 WHERE `ID`=103790 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='То, Чего Не Может Быть', `VerifiedBuild`=25549 WHERE `ID`=104880 AND `Locale`='ruRU';
UPDATE `creature_template_wdb_locale` SET `Name1`='Порождение Бездны', `VerifiedBuild`=25549 WHERE `ID`=104688 AND `Locale`='ruRU';
UPDATE `creature_model_info` SET `BoundingRadius`=3.588633 WHERE `DisplayID`=62180;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1085, `CombatReach`=2.625 WHERE `DisplayID`=27710;
UPDATE `creature_model_info` SET `BoundingRadius`=1.295564 WHERE `DisplayID`=63223;
UPDATE `creature_template` SET `minlevel`=111, `maxlevel`=111, `unit_flags`=32768, `ScaleLevelMin`=0, `ScaleLevelMax`=0, `ScaleLevelDelta`=0 WHERE `entry`=112665; -- Nighthold Protector
UPDATE `creature_model_info` SET `BoundingRadius`=0.725, `CombatReach`=1.45 WHERE `DisplayID`=21487;
UPDATE `creature_model_info` SET `CombatReach`=2.32875 WHERE `DisplayID`=69435;
UPDATE `creature_model_info` SET `BoundingRadius`=0.01315058, `CombatReach`=1.5 WHERE `DisplayID`=65947;


UPDATE `creature_template` SET `speed_walk`=0.5, `speed_run`=0.5714286 WHERE `entry`=104688; -- Voidling
UPDATE `creature_template` SET `unit_flags2`=33556480 WHERE `entry`=112595; -- Shal'dorei Archmage
UPDATE `creature_template` SET `unit_flags2`=33556480 WHERE `entry`=112596; -- Duskwatch Warden
UPDATE `creature_template` SET `BaseAttackTime`=656 WHERE `entry`=121661; -- Sneaky Snake
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=112718; -- Sidereal Familiar
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=112655; -- Celestial Acolyte
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=112638; -- Astral Defender


DELETE FROM `conversation_data` WHERE (`entry`=4808 AND `id`=10732) OR (`entry`=5002 AND `id`=11149) OR (`entry`=4813 AND `id`=10741) OR (`entry`=4813 AND `id`=10740) OR (`entry`=5015 AND `id`=11187) OR (`entry`=4929 AND `id`=10951) OR (`entry`=4813 AND `id`=10737) OR (`entry`=5027 AND `id`=11223) OR (`entry`=4955 AND `id`=11006) OR (`entry`=4929 AND `id`=10950) OR (`entry`=5027 AND `id`=11222) OR (`entry`=4955 AND `id`=11005) OR (`entry`=4813 AND `id`=10739) OR (`entry`=5027 AND `id`=11221) OR (`entry`=5002 AND `id`=11152) OR (`entry`=5048 AND `id`=11264) OR (`entry`=4955 AND `id`=11004) OR (`entry`=4813 AND `id`=10738) OR (`entry`=5048 AND `id`=11265) OR (`entry`=5048 AND `id`=11266) OR (`entry`=4810 AND `id`=10734) OR (`entry`=5048 AND `id`=11267) OR (`entry`=5048 AND `id`=11268) OR (`entry`=4951 AND `id`=10990) OR (`entry`=5048 AND `id`=11262);
DELETE FROM `conversation_data` WHERE (`entry`=4951 AND `id`=10989) OR (`entry`=5048 AND `id`=11263) OR (`entry`=4951 AND `id`=10988) OR (`entry`=4809 AND `id`=10733) OR (`entry`=4951 AND `id`=10987) OR (`entry`=4951 AND `id`=10986) OR (`entry`=4951 AND `id`=10985) OR (`entry`=5013 AND `id`=11181) OR (`entry`=4963 AND `id`=11043) OR (`entry`=5013 AND `id`=11183) OR (`entry`=4807 AND `id`=10731) OR (`entry`=5013 AND `id`=11182) OR (`entry`=4807 AND `id`=10730) OR (`entry`=4963 AND `id`=11045) OR (`entry`=4963 AND `id`=11044) OR (`entry`=4812 AND `id`=10736) OR (`entry`=5014 AND `id`=11184) OR (`entry`=5003 AND `id`=11155) OR (`entry`=4955 AND `id`=11011) OR (`entry`=4899 AND `id`=10895) OR (`entry`=4955 AND `id`=11010) OR (`entry`=4899 AND `id`=10894) OR (`entry`=4955 AND `id`=11009) OR (`entry`=5003 AND `id`=11156) OR (`entry`=4955 AND `id`=11008);
DELETE FROM `conversation_data` WHERE (`entry`=4811 AND `id`=10735) OR (`entry`=4955 AND `id`=11015) OR (`entry`=5170 AND `id`=11566) OR (`entry`=4955 AND `id`=11014) OR (`entry`=4955 AND `id`=11013) OR (`entry`=4955 AND `id`=11012) OR (`entry`=4899 AND `id`=10896) OR (`entry`=5016 AND `id`=11188) OR (`entry`=5002 AND `id`=11150) OR (`entry`=5002 AND `id`=11151);
REPLACE INTO `conversation_data` (`entry`, `id`, `idx`, `textId`, `unk1`, `unk2`) VALUES
(4808, 10732, 0, 0, 296, 0),
(5002, 11149, 0, 0, 0, 0),
(4813, 10741, 4, 55803, 0, 1),
(4813, 10740, 3, 43603, 0, 3),
(5015, 11187, 0, 0, 20, 0),
(4929, 10951, 1, 9063, 273016968, 1),
(4813, 10737, 0, 0, 0, 0),
(5027, 11223, 1, 6459, 0, 1),
(4955, 11006, 2, 17270, 0, 2),
(4929, 10950, 0, 0, 273016968, 0),
(5027, 11222, 2, 15885, 0, 2),
(4955, 11005, 1, 12076, 0, 1),
(4813, 10739, 2, 22587, 0, 2),
(5027, 11221, 0, 0, 0, 0),
(5002, 11152, 3, 31845, 0, 1),
(5048, 11264, 2, 15732, 1, 0),
(4955, 11004, 0, 0, 0, 0),
(4813, 10738, 1, 17041, 0, 1),
(5048, 11265, 3, 24852, 1, 1),
(5048, 11266, 4, 38525, 1, 0),
(4810, 10734, 0, 0, 84, 0),
(5048, 11267, 5, 41602, 1, 1),
(5048, 11268, 6, 54538, 1, 0),
(4951, 10990, 5, 56922, 71233888, 2),
(5048, 11262, 0, 0, 1, 0),
(4951, 10989, 4, 53834, 71233888, 2),
(5048, 11263, 1, 8136, 1, 1),
(4951, 10988, 3, 37345, 71233888, 1),
(4809, 10733, 0, 0, 84, 0),
(4951, 10987, 2, 21581, 71233888, 1),
(4951, 10986, 1, 7757, 71233888, 1),
(4951, 10985, 0, 0, 71233888, 0),
(5013, 11181, 0, 0, 0, 0),
(4963, 11043, 0, 0, 71244016, 0),
(5013, 11183, 2, 5710, 0, 2),
(4807, 10731, 1, 10615, 296, 540672000),
(5013, 11182, 1, 2784, 0, 1),
(4807, 10730, 0, 0, 296, 0),
(4963, 11045, 2, 11456, 71244016, 0),
(4963, 11044, 1, 6135, 71244016, 1),
(4812, 10736, 0, 0, 84, 0),
(5014, 11184, 0, 0, 71232608, 0),
(5003, 11155, 0, 0, 194, 0),
(4955, 11011, 6, 59857, 0, 3),
(4899, 10895, 1, 15763, 0, 256),
(4955, 11010, 5, 50492, 0, 2),
(4899, 10894, 0, 0, 0, 256),
(4955, 11009, 4, 44545, 0, 3),
(5003, 11156, 1, 10451, 194, 1),
(4955, 11008, 3, 26843, 0, 0),
(4811, 10735, 0, 0, 84, 0),
(4955, 11015, 10, 104800, 0, 1),
(5170, 11566, 0, 0, 297, 0),
(4955, 11014, 9, 94087, 0, 3),
(4955, 11013, 8, 78977, 0, 1),
(4955, 11012, 7, 62880, 0, 1),
(4899, 10896, 2, 31251, 0, 256),
(5016, 11188, 0, 0, 0, 0),
(5002, 11150, 1, 8043, 0, 1),
(5002, 11151, 2, 20156, 0, 0);


DELETE FROM `conversation_creature` WHERE (`entry`=4899 AND `id`=0) OR (`entry`=5003 AND `id`=1) OR (`entry`=5003 AND `id`=0) OR (`entry`=5016 AND `id`=0) OR (`entry`=4929 AND `id`=1) OR (`entry`=4929 AND `id`=0) OR (`entry`=4813 AND `id`=1) OR (`entry`=4813 AND `id`=0) OR (`entry`=4813 AND `id`=3) OR (`entry`=4813 AND `id`=2) OR (`entry`=4963 AND `id`=1) OR (`entry`=4963 AND `id`=0) OR (`entry`=5013 AND `id`=1) OR (`entry`=5013 AND `id`=0) OR (`entry`=4955 AND `id`=3) OR (`entry`=4955 AND `id`=2) OR (`entry`=5013 AND `id`=2) OR (`entry`=4955 AND `id`=1) OR (`entry`=4955 AND `id`=0) OR (`entry`=4951 AND `id`=2) OR (`entry`=4951 AND `id`=1) OR (`entry`=4951 AND `id`=0) OR (`entry`=5014 AND `id`=0) OR (`entry`=5002 AND `id`=0) OR (`entry`=5027 AND `id`=2);
DELETE FROM `conversation_creature` WHERE (`entry`=5002 AND `id`=1) OR (`entry`=5027 AND `id`=1) OR (`entry`=5027 AND `id`=0) OR (`entry`=5048 AND `id`=0) OR (`entry`=5048 AND `id`=1) OR (`entry`=5015 AND `id`=0);
REPLACE INTO `conversation_creature` (`entry`, `id`, `creatureId`, `creatureGuid`, `duration`, `unk1`, `unk2`) VALUES
(4899, 0, 120867, 5951582, 42242, 0, 0),
(5003, 1, 116691, 5951582, 19303, 0, 0),
(5003, 0, 116689, 5951582, 19303, 0, 0),
(5016, 0, 118518, 5951582, 4023, 0, 0),
(4929, 1, 120867, 5955509, 25570, 0, 0),
(4929, 0, 121170, 5955517, 25570, 0, 0),
(4813, 1, 119726, 5951583, 69591, 0, 0),
(4813, 0, 119723, 5952243, 69591, 0, 0),
(4813, 3, 119728, 5951584, 69591, 0, 0),
(4813, 2, 119729, 5951583, 69591, 0, 0),
(4963, 1, 116407, 5951582, 15377, 0, 0),
(4963, 0, 121184, 5951582, 15377, 0, 0),
(5013, 1, 118518, 5951582, 9284, 0, 0),
(5013, 0, 118523, 5951582, 9284, 0, 0),
(4955, 3, 121171, 5955517, 113842, 0, 0),
(4955, 2, 121170, 5955517, 113842, 0, 0),
(5013, 2, 118374, 5951582, 9284, 0, 0),
(4955, 1, 121169, 5955517, 113842, 0, 0),
(4955, 0, 120867, 5955509, 113842, 0, 0),
(4951, 2, 119726, 5951583, 64783, 0, 0),
(4951, 1, 119723, 5952243, 64783, 0, 0),
(4951, 0, 119729, 5951583, 64783, 0, 0),
(5014, 0, 118374, 5951582, 4632, 0, 0),
(5002, 0, 116689, 5951582, 40504, 0, 0),
(5027, 2, 118523, 5951582, 22295, 0, 0),
(5002, 1, 116691, 5951582, 40504, 0, 0),
(5027, 1, 118374, 5951582, 22295, 0, 0),
(5027, 0, 118518, 5951582, 22295, 0, 0),
(5048, 0, 118052, 5951582, 69588, 0, 0),
(5048, 1, 121788, 5951582, 69588, 0, 0),
(5015, 0, 118518, 5951582, 3436, 0, 0);


DELETE FROM `conversation_actor` WHERE (`entry`=4807 AND `id`=0) OR (`entry`=4808 AND `id`=0) OR (`entry`=4809 AND `id`=0) OR (`entry`=4810 AND `id`=0) OR (`entry`=4811 AND `id`=0) OR (`entry`=4812 AND `id`=0) OR (`entry`=5170 AND `id`=0);
REPLACE INTO `conversation_actor` (`entry`, `id`, `actorId`, `creatureId`, `displayId`, `unk1`, `unk2`, `unk3`, `duration`) VALUES
(4807, 0, 57715, 119729, 75059, 0, 1, 0, 18607),
(4808, 0, 57715, 119729, 75059, 0, 1, 0, 17308),
(4809, 0, 57712, 119723, 76079, 0, 1, 0, 12753),
(4810, 0, 57712, 119723, 76079, 0, 1, 0, 12868),
(4811, 0, 57712, 119723, 76079, 0, 1, 0, 13214),
(4812, 0, 57712, 119723, 76079, 0, 1, 0, 10381),
(5170, 0, 58365, 121227, 27571, 0, 1, 0, 6611);

SELECT @CONV_GUID := `guid`+1 FROM `conversation` ORDER BY `conversation`.`guid` DESC limit 1;
DELETE FROM conversation WHERE `guid` BETWEEN @CONV_GUID+0 AND @CONV_GUID+21;
INSERT IGNORE INTO conversation (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(@CONV_GUID+0, 4951, 1676, 0, 0, 3, NULL, '', 6209.164, -795.7997, 2974.419, 0), -- 4951 (Area: 8524)
(@CONV_GUID+1, 5002, 1676, 0, 0, 3, NULL, '', 6344.128, -794.3346, 3013.413, 0), -- 5002 (Area: 8524)
(@CONV_GUID+2, 5003, 1676, 0, 0, 3, NULL, '', 6425.676, -802.8654, 3011.76, 0), -- 5003 (Area: 8524)
(@CONV_GUID+3, 4809, 1676, 0, 0, 3, NULL, '', 0, 0, 0, 0), -- 4809 (Area: 8524)
(@CONV_GUID+4, 4808, 1676, 0, 0, 3, NULL, '', 0, 0, 0, 0), -- 4808 (Area: 8524)
(@CONV_GUID+5, 4963, 1676, 0, 0, 3, NULL, '', 5888.364, -936.2222, 2930.175, 0), -- 4963 (Area: 8524)
(@CONV_GUID+6, 4810, 1676, 0, 0, 3, NULL, '', 0, 0, 0, 0), -- 4810 (Area: 8524)
(@CONV_GUID+7, 4807, 1676, 0, 0, 3, NULL, '', 0, 0, 0, 0), -- 4807 (Area: 8524)
(@CONV_GUID+8, 5013, 1676, 0, 0, 3, NULL, '', 6208.613, -1026.842, 2899.559, 0), -- 5013 (Area: 8524)
(@CONV_GUID+9, 5014, 1676, 0, 0, 3, NULL, '', 6193.35, -1028.804, 2899.56, 0), -- 5014 (Area: 8524)
(@CONV_GUID+10, 5016, 1676, 0, 0, 3, NULL, '', 6180.059, -1006.318, 2899.56, 0), -- 5016 (Area: 8524)
(@CONV_GUID+11, 5015, 1676, 0, 0, 3, NULL, '', 6177.173, -1030.979, 2899.56, 0), -- 5015 (Area: 8524)
(@CONV_GUID+12, 5016, 1676, 0, 0, 3, NULL, '', 6177.173, -1030.979, 2899.56, 0), -- 5016 (Area: 8524)
(@CONV_GUID+13, 5027, 1676, 0, 0, 3, NULL, '', 6194.161, -1008.698, 2899.485, 0), -- 5027 (Area: 8524)
(@CONV_GUID+14, 4811, 1676, 0, 0, 3, NULL, '', 0, 0, 0, 0), -- 4811 (Area: 8524)
(@CONV_GUID+15, 4812, 1676, 0, 0, 3, NULL, '', 0, 0, 0, 0), -- 4812 (Area: 8524)
(@CONV_GUID+16, 4813, 1676, 0, 0, 3, NULL, '', 6209.164, -795.7997, 2974.419, 0), -- 4813 (Area: 8524)
(@CONV_GUID+17, 4899, 1676, 0, 0, 3, NULL, '', 6564.467, -811.8802, 1663.666, 0), -- 4899 (Area: 8524)
(@CONV_GUID+18, 4929, 1676, 0, 0, 3, NULL, '', 6536.083, -795.0609, 1648.565, 0), -- 4929 (Area: 8524)
(@CONV_GUID+19, 4955, 1676, 0, 0, 3, NULL, '', 0, 0, 0, 0), -- 4955 (Area: 8524)
(@CONV_GUID+20, 5048, 1676, 0, 0, 3, NULL, '', 4492.564, -1145.401, 5335.506, 0), -- 5048 (Area: 8541)
(@CONV_GUID+21, 5170, 1676, 0, 0, 3, NULL, '', 4469.771, -1476.041, 5385.744, 0); -- 5170 (Area: 8541)


INSERT IGNORE INTO gameobject_template (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `VerifiedBuild`) VALUES
(268969, 0, 31374, 'Древняя дверь', 'interact', '', '', 0.42, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268969
(271099, 3, 43365, 'Трофеи Падения Легиона', '', '', '', 1, 0, 0, 0, 0, 0, 0, 1634, 72256, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 100, 0, 0, 0, 0, 2051, 0, 1, 0, 0, 72362, 0, 2, 25549), -- 271099
(249468, 8, 33316, 'Костер', '', '', '', 1.099036, 0, 0, 0, 0, 0, 0, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 249468
(271127, 35, 42565, 'Doodad_7DU_TombofSargeras_RetractingBridge003', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 271127
(271126, 35, 42748, 'Doodad_7DU_TombofSargeras_RetractingBridge_Mirrored001', '', '', '', 0.9999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 271126
(269255, 1, 41969, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269255
(270027, 33, 40650, '7.2 Tomb Raid - Avatar Floor (test) - MRN', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 270027
(269783, 10, 42097, '', '', '', '', 0.9999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269783
(269793, 10, 42098, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269793
(269792, 10, 42098, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269792
(269791, 10, 42098, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269791
(269789, 10, 42098, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269789
(269795, 10, 42099, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269795
(269794, 10, 42099, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269794
(269790, 10, 42098, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269790
(269788, 10, 42098, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269788
(269787, 10, 42098, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269787
(269784, 10, 42098, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269784
(269786, 10, 42098, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269786
(269785, 10, 42098, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269785
(266354, 8, 39107, 'Обычный костер', '', '', '', 1, 0, 0, 0, 0, 0, 0, 4, 10, 31442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 266354
(245232, 3, 25466, 'Сундук с остатками сокровищ', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195663, 0, 0, 0, 62780, 0, 0, 25549), -- 245232
(277297, 8, 45521, 'Кристаллический костер', '', '', '', 0.75, 0, 0, 0, 0, 0, 0, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 277297
(191083, 5, 8050, 'Демонический круг: создание', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 191083
(266938, 5, 37971, 'Инфернальный шип', '', '', '', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 266938
(184633, 8, 233, 'Горн', '', '', '', 1, 0, 0, 0, 0, 0, 0, 3, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 184633
(214229, 8, 12808, 'Термическая наковальня', '', '', '', 1, 0, 0, 0, 0, 0, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 214229
(233282, 22, 7537, 'Стол с яствами', '', '', '', 1.2, 0, 0, 0, 0, 0, 0, 167143, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 233282
(194097, 23, 8548, 'Портал Призыва', '', '', '', 1, 0, 0, 0, 0, 0, 0, 1, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 194097
(194108, 18, 7358, 'Портал Призыва', '', '', '', 1, 0, 0, 0, 0, 0, 0, 3, 62330, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 194108
(269257, 10, 41975, 'Орочья руна', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 241742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269257
(269779, 10, 42094, '', '', '', '', 0.9999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269779
(269260, 10, 41975, 'Орочья руна', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 241742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269260
(269258, 10, 41975, 'Орочья руна', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 241742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269258
(269987, 0, 42416, 'Doodad_7DU_TombOfSargeras_Felstorm_Collision001', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269987
(267705, 33, 40415, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267705
(267706, 33, 40411, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267706
(267719, 33, 40420, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267719
(267703, 33, 40406, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267703
(267720, 33, 40425, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267720
(267710, 33, 40402, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267710
(267718, 33, 40419, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267718
(267717, 33, 40424, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267717
(267714, 33, 40405, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267714
(267713, 33, 40410, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267713
(267715, 33, 40423, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267715
(267721, 33, 40418, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267721
(267700, 33, 40414, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267700
(267702, 33, 40409, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267702
(267711, 33, 40404, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267711
(267723, 33, 40422, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267723
(267708, 33, 40413, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267708
(267704, 33, 40408, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267704
(267716, 33, 40417, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267716
(267712, 33, 40403, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267712
(267722, 33, 40421, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267722
(267724, 33, 40416, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267724
(267701, 33, 40407, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267701
(267707, 33, 40412, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267707
(267709, 33, 40398, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267709
(269262, 0, 41976, 'Двери склепа', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269262
(269261, 0, 41976, 'Двери склепа', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269261
(268574, 11, 41205, 'Doodad_7DU_TombOfSargeras_Titan_Elevator', '', '', '', 0.9999998, 0, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0, -1, 39000, 0, 86667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268574
(267934, 33, 40650, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 267934
(269781, 0, 41762, 'Призрачная преграда', '', '', '', 1.147318, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269781
(269780, 10, 42095, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269780
(268749, 0, 40920, 'Дверь', '', '', '', 0.8092345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268749
(272384, 10, 43369, '', '', '', '', 1.05759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 272384
(272386, 10, 43369, '', '', '', '', 1.05759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 272386
(269782, 10, 42096, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269782
(268579, 0, 41166, 'Дверь', '', '', '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268579
(272385, 10, 43369, '', '', '', '', 1.05759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 272385
(268748, 0, 40920, 'Дверь', '', '', '', 0.8092345, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268748
(269976, 0, 42397, 'Водяная дверь', '', '', '', 0.8968711, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269976
(269988, 0, 42417, 'Doodad_7DU_TombOfSargeras_Felstorm_Collision002', '', '', '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269988
(268819, 0, 40920, 'Дверь', '', '', '', 0.5414141, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268819
(268580, 0, 41166, 'Дверь', '', '', '', 1.314212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268580
(269842, 10, 42213, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269842
(268751, 0, 40920, 'Дверь', '', '', '', 1.00616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268751
(269045, 0, 41762, '', '', '', '', 0.9999999, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269045
(268750, 0, 40920, 'Дверь', '', '', '', 0.9967877, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268750
(269164, 0, 41871, 'Алтарь', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269164
(268365, 0, 40920, 'Дверь', '', '', '', 0.8024516, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268365
(269975, 0, 42396, 'Doodad_7DU_TombofSargeras_FireDoor01', '', '', '', 0.9999999, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269975
(268366, 0, 40920, 'Дверь', '', '', '', 0.8024516, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268366
(270940, 0, 40920, 'Дверь', '', '', '', 0.8824456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 270940
(269839, 10, 42212, '', '', '', '', 0.9999998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269839
(268364, 0, 40920, 'Дверь', '', '', '', 0.8024517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268364
(269841, 10, 33855, 'Древний переключатель', '', '', '', 1.90945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269841
(269840, 10, 33855, 'Древний переключатель', '', '', '', 1.90945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269840
(268514, 0, 41166, 'Дверь', '', '', '', 0.9999998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268514
(269838, 10, 42211, '', '', '', '', 0.9999998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269838
(272802, 0, 43799, '', '', '', '', 0.9999999, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 272802
(268752, 0, 40920, 'Дверь', '', '', '', 0.796352, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 268752
(269973, 0, 26056, 'Doodad_6FX_Firewall_DoorSMFel001', '', '', '', 1.255354, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269973
(269259, 10, 41975, 'Орочья руна', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 241742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269259
(269120, 0, 41617, 'Дверь в покои госпожи', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269120
(269974, 0, 26056, 'Doodad_6FX_Firewall_DoorSMFel002', '', '', '', 1.48612, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269974
(269256, 10, 41975, 'Орочья руна', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 241742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269256
(181621, 22, 7359, 'Источник душ', '', '', '', 1, 0, 0, 0, 0, 0, 0, 34130, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 181621
(269192, 0, 41617, 'Дверь в вестибюль', '', '', '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 269192
(253126, 5, 6450, 'Портал в подземелье', '', '', '', 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 253126
(179944, 18, 1327, 'Камень встреч - портал призыва', '', '', '', 1, 0, 0, 0, 0, 0, 0, 2, 7720, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549); -- 179944


UPDATE `gameobject_template` SET `size`=1, `name`='''Камень встреч - портал призыва''' WHERE `entry`=179944;
UPDATE `gameobject_template` SET `size`=1, `flags`=48, `name`='''Дверь в вестибюль''' WHERE `entry`=269192;
UPDATE `gameobject_template` SET `size`=1, `flags`=49, `name`='''Дверь в покои госпожи''' WHERE `entry`=269120;
UPDATE `gameobject_template` SET `size`=1.48612, `faction`=114, `flags`=32, `name`='''Doodad_6FX_Firewall_DoorSMFel002''' WHERE `entry`=269974;
UPDATE `gameobject_template` SET `size`=1.255354, `flags`=48, `name`='''Doodad_6FX_Firewall_DoorSMFel001''' WHERE `entry`=269973;
UPDATE `gameobject_template` SET `size`=1.90945, `name`='''Древний переключатель''' WHERE `entry` IN (269840, 269841);
UPDATE `gameobject_template` SET `size`=0.9999998, `flags`=48 WHERE `entry` IN (269838, 269839);
UPDATE `gameobject_template` SET `size`=0.796352, `flags`=32, `name`='''Дверь''' WHERE `entry`=268752;
UPDATE `gameobject_template` SET `size`=0.9999999, `flags`=48 WHERE `entry` IN (272802, 269779, 269783);
UPDATE `gameobject_template` SET `size`=1.5, `flags`=32, `name`='''Портал в подземелье''' WHERE `entry`=253126;
UPDATE `gameobject_template` SET `size`=0.9999998, `faction`=1375, `flags`=32, `name`='''Дверь''' WHERE `entry`=268514;
UPDATE `gameobject_template` SET `size`=1, `name`='''Источник душ''' WHERE `entry`=181621;
UPDATE `gameobject_template` SET `size`=1, `name`='''Орочья руна''' WHERE `entry` IN (269259, 269257);
UPDATE `gameobject_template` SET `size`=1, `name`='''Орочья руна''' WHERE `entry`=269256;
UPDATE `gameobject_template` SET `size`=1, `faction`=1375, `flags`=32, `name`='''Алтарь''' WHERE `entry`=269164;
UPDATE `gameobject_template` SET `size`=0.9999999, `faction`=1375, `flags`=48, `name`='''Doodad_7DU_TombofSargeras_FireDoor01''' WHERE `entry`=269975;
UPDATE `gameobject_template` SET `size`=0.8968711, `faction`=1375, `flags`=48, `name`='''Водяная дверь''' WHERE `entry`=269976;
UPDATE `gameobject_template` SET `size`=0.8824456, `flags`=32, `name`='''Дверь''' WHERE `entry`=270940;
UPDATE `gameobject_template` SET `size`=1, `flags`=1048624 WHERE `entry` IN (267715, 267714, 267713, 267712, 267719, 267718, 267717, 267716, 267723, 267722, 267721, 267720, 267724, 267702, 267701, 267700, 267707, 267706, 267705, 267704, 267711, 267710, 267709, 267708, 267934);
UPDATE `gameobject_template` SET `size`=1, `flags`=48, `name`='''Doodad_7DU_TombOfSargeras_Felstorm_Collision001''' WHERE `entry`=269987;
UPDATE `gameobject_template` SET `size`=1, `faction`=1375, `flags`=48, `name`='''Doodad_7DU_TombOfSargeras_Felstorm_Collision002''' WHERE `entry`=269988;
UPDATE `gameobject_template` SET `size`=0.9999999, `faction`=1375, `flags`=50 WHERE `entry`=269045;
UPDATE `gameobject_template` SET `size`=1, `flags`=1048608 WHERE `entry`=267703;
UPDATE `gameobject_template` SET `size`=1, `flags`=48 WHERE `entry` IN (269842, 269782, 269780, 269786, 269785, 269787, 269784, 269790, 269788, 269795, 269794, 269791, 269789, 269793, 269792, 269255);
UPDATE `gameobject_template` SET `size`=1.147318, `faction`=1375, `flags`=48, `name`='''Призрачная преграда''' WHERE `entry`=269781;
UPDATE `gameobject_template` SET `size`=0.5414141, `flags`=32, `name`='''Дверь''' WHERE `entry`=268819;
UPDATE `gameobject_template` SET `size`=1.00616, `faction`=1375, `flags`=48, `name`='''Дверь''' WHERE `entry`=268751;
UPDATE `gameobject_template` SET `size`=0.9967877, `flags`=32, `name`='''Дверь''' WHERE `entry`=268750;
UPDATE `gameobject_template` SET `size`=0.8092345, `faction`=1375, `flags`=48, `name`='''Дверь''' WHERE `entry`=268749;
UPDATE `gameobject_template` SET `size`=0.8092345, `faction`=114, `flags`=32, `name`='''Дверь''' WHERE `entry`=268748;
UPDATE `gameobject_template` SET `size`=1, `faction`=1375, `flags`=32, `name`='''Дверь''' WHERE `entry`=268579;
UPDATE `gameobject_template` SET `size`=1.314212, `faction`=1375, `flags`=48, `name`='''Дверь''' WHERE `entry`=268580;
UPDATE `gameobject_template` SET `size`=0.8024516, `faction`=1375, `flags`=32, `name`='''Дверь''' WHERE `entry`=268366;
UPDATE `gameobject_template` SET `size`=0.8024516, `flags`=32, `name`='''Дверь''' WHERE `entry`=268365;
UPDATE `gameobject_template` SET `size`=0.8024517, `faction`=1375, `flags`=32, `name`='''Дверь''' WHERE `entry`=268364;
UPDATE `gameobject_template` SET `size`=1.05759, `flags`=48 WHERE `entry`=272386;
UPDATE `gameobject_template` SET `size`=1.05759, `flags`=48 WHERE `entry` IN (272385, 272384);
UPDATE `gameobject_template` SET `size`=1, `flags`=48, `name`='''Двери склепа''' WHERE `entry` IN (269262, 269261);
UPDATE `gameobject_template` SET `size`=0.9999998, `flags`=40, `name`='''Doodad_7DU_TombOfSargeras_Titan_Elevator''' WHERE `entry`=268574;
UPDATE `gameobject_template` SET `size`=1, `name`='''Орочья руна''' WHERE `entry` IN (269258, 269260);
UPDATE `gameobject_template` SET `size`=1, `name`='''Портал Призыва''' WHERE `entry` IN (194108, 194097);
UPDATE `gameobject_template` SET `size`=1.2, `name`='''Стол с яствами''' WHERE `entry`=233282;
UPDATE `gameobject_template` SET `size`=1, `name`='''Термическая наковальня''' WHERE `entry`=214229;
UPDATE `gameobject_template` SET `size`=2, `faction`=14, `flags`=32, `name`='''Инфернальный шип''' WHERE `entry`=266938;
UPDATE `gameobject_template` SET `size`=1, `name`='''Демонический круг: создание''' WHERE `entry`=191083;
UPDATE `gameobject_template` SET `size`=0.75, `name`='''Кристаллический костер''' WHERE `entry`=277297;
UPDATE `gameobject_template` SET `size`=0.25, `faction`=7, `flags`=2113536, `name`='''Сундук с остатками сокровищ''' WHERE `entry`=245232;
UPDATE `gameobject_template` SET `size`=1, `name`='''Обычный костер''' WHERE `entry`=266354;
UPDATE `gameobject_template` SET `size`=1, `flags`=1048624, `name`='''7.2 Tomb Raid - Avatar Floor (test) - MRN''' WHERE `entry`=270027;
UPDATE `gameobject_template` SET `size`=1, `name`='''Doodad_7DU_TombofSargeras_RetractingBridge003''' WHERE `entry`=271127;
UPDATE `gameobject_template` SET `size`=0.9999999, `name`='''Doodad_7DU_TombofSargeras_RetractingBridge_Mirrored001''' WHERE `entry`=271126;
UPDATE `gameobject_template` SET `size`=0.42, `flags`=32, `name`='''Древняя дверь''' WHERE `entry`=268969;
UPDATE `gameobject_template` SET `size`=1.099036, `name`='''Костер''' WHERE `entry`=249468;
UPDATE `gameobject_template` SET `size`=1, `faction`=94, `flags`=2113568, `name`='''Трофеи Падения Легиона''' WHERE `entry`=271099;


DELETE FROM `conversation_data` WHERE (`entry`=4808 AND `id`=10732) OR (`entry`=4810 AND `id`=10734) OR (`entry`=4951 AND `id`=10990) OR (`entry`=4951 AND `id`=10989) OR (`entry`=4951 AND `id`=10988) OR (`entry`=4951 AND `id`=10987) OR (`entry`=4951 AND `id`=10986) OR (`entry`=4951 AND `id`=10985) OR (`entry`=4963 AND `id`=11043) OR (`entry`=4963 AND `id`=11045) OR (`entry`=4963 AND `id`=11044);
REPLACE INTO `conversation_data` (`entry`, `id`, `idx`, `textId`, `unk1`, `unk2`) VALUES
(4808, 10732, 0, 0, 296, 0),
(4810, 10734, 0, 0, 84, 0),
(4951, 10990, 5, 56922, 0, 2),
(4951, 10989, 4, 53834, 0, 2),
(4951, 10988, 3, 37345, 0, 1),
(4951, 10987, 2, 21581, 0, 1),
(4951, 10986, 1, 7757, 0, 1),
(4951, 10985, 0, 0, 0, 0),
(4963, 11043, 0, 0, 1635735720, 0),
(4963, 11045, 2, 11456, 1635735720, 0),
(4963, 11044, 1, 6135, 1635735720, 1);

DELETE FROM `conversation_creature` WHERE (`entry`=4963 AND `id`=1) OR (`entry`=4963 AND `id`=0) OR (`entry`=4951 AND `id`=2) OR (`entry`=4951 AND `id`=1) OR (`entry`=4951 AND `id`=0);
REPLACE INTO `conversation_creature` (`entry`, `id`, `creatureId`, `creatureGuid`, `duration`, `unk1`, `unk2`) VALUES
(4963, 1, 116407, 5985145, 15377, 0, 0),
(4963, 0, 121184, 5985145, 15377, 0, 0),
(4951, 2, 119726, 5985147, 64783, 0, 0),
(4951, 1, 119723, 5985558, 64783, 0, 0),
(4951, 0, 119729, 5985146, 64783, 0, 0);


DELETE FROM `conversation_actor` WHERE (`entry`=4808 AND `id`=0) OR (`entry`=4810 AND `id`=0);
REPLACE INTO `conversation_actor` (`entry`, `id`, `actorId`, `creatureId`, `displayId`, `unk1`, `unk2`, `unk3`, `duration`) VALUES
(4808, 0, 57715, 119729, 75059, 0, 1, 0, 17308),
(4810, 0, 57712, 119723, 76079, 0, 1, 0, 12868);

INSERT IGNORE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(120132, 0, 0x0, 0x0, '239361'), -- Aberrant Fel                Auras:    Aberrant Fel Cosmetic
(120131, 0, 0x0, 0x0, '239359'), -- Aberrant Light				Auras:    Aberrant Light Cosmetic
(116976, 0, 0x0, 0x0, '233019'), -- Infernal Spike				Auras:    Infernal Spike
(120697, 0, 0x0, 0x0, '240528'), -- Worshiper of Elune			Auras:    Waning
(122850, 0, 0x0, 0x0, '240528'), -- Umbral Guard				Auras:    Waning
(120697, 0, 0x1, 0x0, '240528'), -- Worshiper of Elune			Auras:    Waning
(122851, 0, 0x0, 0x0, '240528'), -- Umbral Archer				Auras:    Waning
(122847, 0, 0x0, 0x0, '240526'), -- Umbral Priestess			Auras:    Waxing
(120697, 0, 0x0, 0x0, '240526'), -- Worshiper of Elune			Auras:    Waxing
(120697, 0, 0x1, 0x0, '240526'), -- Worshiper of Elune			Auras:    Waxing
(120784, 0, 0x0, 0x0, '240700'), -- Aegwynn's Trap				Auras:    Aegwynn's Trap
(120477, 0, 0x0, 0x0, '123978'), -- Deep Stalker				Auras:    Mod Scale 95-120%
(120516, 0, 0x0, 0x0, '214567'), -- Razorjaw Swift-fin			Auras:    Mod Scale 90-110%
(118699, 0, 0x0, 0x0, '241576 235113'), -- Spiritual Font		Auras:    Spiritual Font,     Spiritual Barrier
(118701, 0, 0x0, 0x0, '241577 235620'); -- Spiritual Font		Auras:    Spiritual Font,     Spiritual Barrier

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (118699, 118701);
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(118699, 235732, 1, 0),
(118701, 235590, 1, 0);
