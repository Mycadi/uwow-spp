/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


REPLACE INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
('1', '37290', '0', '', '', '');

-- UPDATE `creature_template` set `npcflag2` = 2 WHERE  entry in (80600, 81369, 85806, 86016, 86017, 86018 ); -- `name` LIKE 'Architect Table';
-- UPDATE `creature_template` set `npcflag2` = 64 WHERE entry in (80432, 81546, 81649, 81661, 82507, 82600,82601, 84224, 84698, 85805, 86031, 86062, 97904); -- `name` LIKE 'Command Table';

REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `bonusChance`) VALUES 
('1152', '1116', 'wod_garrisone_horde_lvl1', '1', '0'),
('1158', '1116', 'wod_garrisone_alliance_lvl1', '1', '0');

-- Garrison spells
-- 175090
-- 171474
-- 155075

-- Garrison buildings
-- go: 231217 - завершение строительства.
-- go: 230867 -  облако пыли на месте строительства.
-- go: 237191 - Гарнизонный склад
-- go: Garrison Building Horde Barracks V1 - basic 230412
-- go: 233081
-- go: 233083


-- Phase's
-- 4086 global world.
-- 3194 В самом начале группа после высадки. 70859 76411 78288
-- 3441 до взятия квеста 34402
-- 3195 - npc 78272, 80192
-- 3962 4177 походу при обновлении зоны 7004 и ее подзон или вообще к этой зоне относится. это фаза гарнизона. персональная получается. а точнее это AreaInstance.
-- 3331 - scena 594 выполнена. npc 78272
-- 3196 - scena 594 выполнена. + пропадает после сцены 604 npc 78288, 70859, 76411, 80227 и потом возвращается после реварда 34364
-- 3197  - инженер из портала. 
-- 3213 - 34364 reward. 
-- 3324 - taken 34375 for area 7004 до конца.
-- 3325 - taken 34375 removed on some.
-- 3326 - rew 34375 removed with 3326
-- 3887 - taken 34378
-- 3364 - compl. 34378
-- 3311 - Q34462 area 6966
REPLACE INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `PreloadMapID`, `VisibleMapID`, `flags`, `comment`) VALUES 
('6720', '1', '0', '3194', '0', '0', '16', 'Draenor. FrostFireRidge. While not rew q33868'),    --                                      2406 2537 3007 3021 3023 3025 3026 3194 3195 3427 3441 3592 4086
('6720', '2', '0', '3441 3195', '0', '0', '16', 'Draenor. FrostFireRidge. While not teken q34402'),                  -- q33815 take     2406 2537 3007 3021 3023 3025 3026 3195 3427 3441 3592 4086
--                                                                                                                      q33815 rewarded 2406 2537 3007 3021 3023 3025 3026 3195 3427 3592 4086
--                                                                                                                      q34402 take     2406 2537 3007 3021 3023 3025 3026 3427 3592 4086
('6720', '3', '0', '3962 4177', '0', '0', '16', 'Draenor. FrostFireRidge. While not teken q34402'),                  -- зона 7004       2406 2537 3007 3021 3023 3025 3026 3427 3592 3962 4086 4177
('6720', '4', '0', '3331', '0', '0', '16', 'Draenor. FrostFireRidge. scene 594 complete'),                           -- scene778 comp.  2406 2537 3007 3021 3023 3025 3026 3196 3331 3427 3592 3962 4086 4177
('6720', '5', '0', '3196', '0', '0', '16', 'Draenor. FrostFireRidge. scene 594 complete'),                           -- complete 34364  2406 2537 3007 3021 3023 3025 3026 3331 3427 3592 3962 4086 4177
('6720', '6', '0', '3197', '0', '0', '16', 'Draenor. FrostFireRidge. scene 604 trigger'),                            -- scene trig.     2406 2537 3007 3021 3023 3025 3026 3197 3331 3427 3592 3962 4086 4177
('6720', '7', '0', '3213', '0', '0', '16', 'Draenor. FrostFireRidge. 34364 rew '),                                   -- 34364 rew       2406 2537 3007 3021 3023 3025 3026 3197 3213 3427 3592 3962 4086 4177
('6720', '8', '0', '3324', '0', '0', '16', 'Draenor. FrostFireRidge. 34375 taken '),                                 --                 2406 2537 3007 3021 3023 3025 3026 3196 3197 3213 3324 3325 3427 3592 3962 4086 4177
('6720', '9', '0', '3325', '0', '0', '16', 'Draenor. FrostFireRidge. 34375 taken '),                                 
('6720', '10', '0', '3326', '0', '0', '16', 'Draenor. FrostFireRidge. 34375 rew '),                                  -- compl. 34375    2406 2537 3007 3021 3023 3025 3026 3196 3197 3213 3324 3325 3326 3427 3592 3962 4086 4177
('6720', '11', '0', '3887', '0', '0', '16', 'Draenor. FrostFireRidge. 34378 taken '),                                -- take 34378      2406 2537 3007 3021 3023 3025 3026 3196 3197 3213 3324 3325 3326 3427 3592 3887 3962 4086 4177
('6720', '12', '0', '0', '1152', '0', '24', 'Draenor. FrostFireRidge. Garrison terrain lvl.1 '),                     -- comp. 34378     2406 2537 3007 3021 3023 3025 3026 3196 3213 3324 3364 3592 3962 4086 4177
('6720', '13', '0', '3364', '0', '0', '16', 'Draenor. FrostFireRidge. 34378 complete '),                     --
                                                                                                                     --                 2406 2537 3007 3021 3023 3025 3026 3196 3213 3324 3364 3592 3962 4086 4177
('6720', '14', '0', '3311', '0', '0', '16', 'Draenor. Q34462'),
('6720', '100', '0', '2406 2537 3007 3021 3023 3025 3026 3427 3592 4086', '0', '0', '16', 'Draenor. FrostFireRidge.'); --

UPDATE `phase_definitions` SET `PreloadMapID` = '0' WHERE `phase_definitions`.`zoneId` = 6720 AND `phase_definitions`.`entry` = 12;

-- Я не использую проверки по области подобно 7004 т.к. есть вопросы между уровнями гарнизонов.
-- в целом это не особо нужно. так что эта погрешность может остаться без изменения.
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 23 AND SourceGroup = 6720; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, 6720, 1, 0, 0, 14, 0, 33815, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. While non 33815'),
(23, 6720, 2, 0, 0, 14, 0, 34402, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. While non 34402'),
-- (23, 6720, 3, 0, 0, 23, 0, 7004, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. requare areaID=7004'),

(23, 6720, 4, 0, 0, 8, 0, 34364, 0, 0, 1, 0, '', 'Draenor. FrostFireRidge. AND not rew 34364'),
(23, 6720, 4, 1, 0, 40, 0, 594, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. scene comp. 594'),
(23, 6720, 4, 1, 1, 8, 0, 34402, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. or rew 34402'),

-- 5. пропадает пока идет 2 ролика, но после реварда 34364 появляется. Сцены используют действующие гуиды по этому возможно лучше оставить и не трогать.
(23, 6720, 5, 0, 0, 40, 0, 594, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. AND scene comp. 594'),
(23, 6720, 5, 0, 1, 8, 0, 34402, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. AND or rew 34402'),
(23, 6720, 6, 0, 0, 42, 0, 604, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge.  triger scene 604'),
(23, 6720, 6, 0, 1, 8, 0, 34364, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge.  or rew 34364'),
(23, 6720, 7, 0, 0, 8, 0, 34364, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge.  or rew 34364'),
-- (23, 6720, 8, 0, 0, 23, 0, 7004, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. requare areaID=7004'),
(23, 6720, 8, 0, 0, 14, 0, 34375, 0, 0, 1, 0, '', 'Draenor. FrostFireRidge. While has status 34375'),
(23, 6720, 9, 0, 0, 14, 0, 34375, 0, 0, 1, 0, '', 'Draenor. FrostFireRidge. While has status 34375'),
(23, 6720, 10, 0, 0, 8, 0, 34375, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. rew 34375'),
(23, 6720, 11, 0, 0, 14, 0, 34378, 0, 0, 1, 0, '', 'Draenor. FrostFireRidge. While has status 34378'),
(23, 6720, 12, 0, 0, 28, 0, 34378, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. compl 34378'),
(23, 6720, 12, 0, 1, 8, 0, 34378, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. rew 34378'),
(23, 6720, 13, 0, 0, 28, 0, 34378, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. compl 34378'),
(23, 6720, 13, 0, 1, 8, 0, 34378, 0, 0, 0, 0, '', 'Draenor. FrostFireRidge. rew 34378'),
(23, 6720, 14, 0, 0, 14, 0, 34462, 0, 0, 1, 0, '', 'Draenor. FrostFireRidge. While has status 34462'),
(23, 6720, 14, 0, 1, 8, 0, 34462, 0, 0, 1, 0, '', 'Draenor. FrostFireRidge. and not rew 34462');

-- Сцены
REPLACE INTO `spell_scene` (`SceneScriptPackageID`, `MiscValue`, `PlaybackFlags`, `trigerSpell`, MonsterCredit, ScriptName, `comment`) VALUES
('771', '578', '16', '0', '0', 'sceneTrigger_q33815', 'Draenor. FrostFireRidge. q33815'),
('778', '594', '16', '0', '0', '', 'Draenor. FrostFireRidge. q34402 spell 158228'),
('789', '604', '16', '82238', '0', '', 'Draenor. FrostFireRidge. q34364 spell 169422'),
('798', '608', '16', '0', '0', '', 'Draenor. FrostFireRidge. q: 34364 on quest rew.');


-- Spell Area
DELETE FROM `spell_area` WHERE area in (6720, 7004);
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
('158228', '6720', '34402', '34402', '0', '0', '2', '1', '10', '64'),
('49416', '6720', '34375', '34375', '0', '0', '2', '1', '10', '64'),
('175536', '6720', '34378', '34378', '0', '0', '2', '0', '2', '64'),
('161693', '6720', '34461', '0', '0', '0', '2', '1', '66', '64'),
('161693', '7004', '34461', '0', '0', '0', '2', '1', '66', '64');

-- Quest chaine fixes.
REPLACE INTO `quest_template_addon` (`ID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`) VALUES 
('33815', '33868', '0', '0'),
('34402', '33815', '0', '0'),
('34364', '34402', '0', '0'),
('34375', '34364', '34765', '-34364'),
('34592', '34364', '34765', '-34364'),
('34765', '34592', '0', '0'),
('34378', '34765', '0', '0'),
('34822', '34378', '34461', '-34822'),
('34824', '34378', '34461', '-34822'),
('34823', '34378', '0', '0'),
('34861', '34461', '0', '0'),
('34462', '34861', '0', '0'),
-- ('34775', '34462', '0', '0'), фикс ниже.

('34736', '33828', '0', '0'), -- checked by sniff. possible need more correct.

('36567', '32796', '0', '0'),
('36706', '32796', '0', '0'),
('37669', '32796', '0', '0'), -- Не совсем верно. появляется после изучения постройки - мастерская. Тут надо кондишны пилить.

('34379', '34775', '0', '0');

-- misc
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 28 AND SourceEntry = 344;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('28', '0', '344', '0', '0', '9', '0', '35914', '0', '0', '0', '0', 'vignette q. 35914 taken', NULL);

-- Q: 33868 Родина Северных Волков
REPLACE INTO `area_queststart` (`id`, `quest`) VALUES ('7257', '33868');
REPLACE INTO `area_queststart` (`id`, `quest`) VALUES ('7765', '33868');

-- Q: 33815 Песня льда и огня
UPDATE `quest_template` SET `StartScript` = '33815', `CompleteScript` = '33815' WHERE `quest_template`.`ID` = 33815;
DELETE FROM `quest_start_scripts` WHERE id = 33815;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
('33815', '0', '35', '578', '0', '0', '0', '0', '0', '0');
DELETE FROM `quest_end_scripts` WHERE id = 33815;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
('33815', '0', '36', '578', '0', '0', '0', '0', '0', '0');

DELETE FROM `creature_text` WHERE entry = 78272;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(78272, 0, 0, 'Дрек''Тар, мой старый друг, ты жив!', 14, 0, 100, 5, 0, 45256, 'Дуротан to Player');

-- Q: 34364
UPDATE `quest_template` SET `CompleteScript` = '34364' WHERE `quest_template`.`ID` = 34364;
DELETE FROM `quest_end_scripts` WHERE id = 34364;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
('34364', '0', '35', '608', '0', '0', '0', '0', '0', '0');

-- Q: 34375 За работу GO: 230527 NPC: 79525 spell: 160657 area spell: 49416
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_q34375' WHERE `creature_template`.`entry` = 79526;
UPDATE `gameobject_template` SET `ScriptName` = 'go_wod_q34375' WHERE `gameobject_template`.`entry` = 230527;
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES ('79526', '1', '109579', '0', '0');

-- Q: 34378 by go cast 161033 use hardfix.
DELETE FROM `spell_linked_spell` WHERE spell_trigger = 161033;
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('161033', 'spell_161033');

-- Q: HORDE 34824 ALLIANCE Q: 35176 - only chest credit
REPLACE INTO spell_script_names (`spell_id`, `ScriptName`) VALUES ('173847', 'spell_garrison_cache_loot'); -- go 237191
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('162714', 'spell_q34824');

DELETE FROM `creature_text` WHERE entry = 80223;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(80223, 0, 0, 'Не забудь потом как-нибудь снова заглянуть за ресурсами, командир. Во время твоего отсутствия батраки будут складывать все вот в этот сундук.', 12, 0, 100, 1, 0, 0, 'Леди Сена to Player');

UPDATE `creature_template` SET `gossip_menu_id`=86775, `AIName`='SmartAI' WHERE `entry`=86775;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('86775', '25119');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `optionNPC`, `option_text`, `box_coded`, `box_money`, `box_text`) VALUES
(86775, 0, 0, 'Газлоу ищет тебя', 0, 0, ''); -- 86775
DELETE FROM smart_scripts WHERE entryorguid = 86775;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(86775, 0, 0, 0, 62, 0, 100, 0, 86775, 0, 0, 0, 11, 173673, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q34824');


UPDATE `creature_template` SET `gossip_menu_id`=80225, `AIName`='SmartAI' WHERE `entry`=80225;
DELETE FROM `creature_text` WHERE entry = 80225;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(80225, 0, 0, 'Ну вот и все! Армия полностью вооруженных и воодушевленных батраков принимается за дело.', 12, 0, 100, 0, 0, 0, 'Скеггит to Player');
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('80225', '23892');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `optionNPC`, `option_text`, `box_coded`, `box_money`, `box_text`) VALUES
(80225, 0, 0, 'Заставь батраков работать.', 0, 0, ''); -- 80225
DELETE FROM smart_scripts WHERE entryorguid = 80225;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(80225, 0, 0, 0, 62, 0, 100, 0, 80225, 0, 0, 0, 11, 162714, 18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q34824');

-- Q HORDE: 34461 Q ALLIANCE: 34587
-- cast 161693
UPDATE `quest_objectives` SET `StorageIndex` = '0' WHERE `quest_objectives`.`ID` = 275371;
UPDATE `quest_objectives` SET `StorageIndex` = '1' WHERE `quest_objectives`.`ID` = 275372;
UPDATE `quest_objectives` SET `StorageIndex` = '2' WHERE `quest_objectives`.`ID` = 272934;
UPDATE `quest_objectives` SET `StorageIndex` = '3' WHERE `quest_objectives`.`ID` = 273110;
UPDATE `quest_objectives` SET `StorageIndex` = '4' WHERE `quest_objectives`.`ID` = 273111;

UPDATE `quest_objectives_locale` SET `StorageIndex` = '0' WHERE `quest_objectives_locale`.`ID` = 275371;
UPDATE `quest_objectives_locale` SET `StorageIndex` = '1' WHERE `quest_objectives_locale`.`ID` = 275372;
UPDATE `quest_objectives_locale` SET `StorageIndex` = '2' WHERE `quest_objectives_locale`.`ID` = 272934;
UPDATE `quest_objectives_locale` SET `StorageIndex` = '3' WHERE `quest_objectives_locale`.`ID` = 273110;
UPDATE `quest_objectives_locale` SET `StorageIndex` = '4' WHERE `quest_objectives_locale`.`ID` = 273111;

DELETE FROM `creature_text` WHERE entry = 78466;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(78466, 0, 0, 'Большинство зданий строится только со временем. Раз уж это ваша первая постройка, я все устрою и попрошу старшего батрака нам подсобить.', 12, 0, 100, 0, 0, 0, 'Газлоу to Player'),
(78466, 1, 0, 'Если найдешь еще чертежи и материалы, приноси их мне, и мы застроим другие участки.', 12, 0, 100, 0, 0, 0, 'Газлоу to Player'),
(78466, 2, 0, 'Резлак тоже постарается добыть кое-какие чертежи, которые ты сможешь получить... за отдельную плату.', 12, 0, 100, 0, 0, 0, 'Газлоу to Player');

DELETE FROM `creature_text` WHERE entry = 77209;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(77209, 0, 0, 'Благодаря тебе у нас появился отличный форпост в Долине Призрачной Луны.', 12, 0, 100, 396, 0, 0, 'Барос Алекстон to Player'),
(77209, 1, 0, 'Может, на корабле орков найдется что-нибудь полезное?.. Кроме этих сверл для зубов.', 12, 0, 100, 1, 0, 0, 'Барос Алекстон to Player'),
(77209, 2, 0, 'Уф. Может, сегодня мне даже удастся полюбоваться на звезды. Смена обстановки не помешает.', 12, 0, 100, 4, 0, 0, 'Барос Алекстон to Player'),
(77209, 3, 0, 'Фу, некоторые припасы совсем промокли и... какие-то липкие. Можно использовать, но выглядят они мерзко.', 12, 0, 100, 1, 0, 0, 'Барос Алекстон to Player'),
(77209, 4, 0, 'Казармы мы мигом построим. Командир, следуй за мной.', 12, 0, 100, 0, 0, 0, 'Барос Алекстон to Player'),
(77209, 5, 0, 'Строительство других зданий займет гораздо больше времени.', 12, 0, 100, 0, 0, 0, 'Барос Алекстон to Player'),
(77209, 6, 0, 'Прими работу, когда пожелаешь.', 12, 0, 100, 0, 0, 0, 'Барос Алекстон to Player'),
(77209, 7, 0, 'Казармы выглядят превосходно. Поговори с Мараадом, а я пока полюбуюсь своей искусной работой.', 12, 0, 100, 0, 0, 0, 'Барос Алекстон to Player');

--  Q: 34462 80577 -> 80578 | 55370 ?? learn 160951
UPDATE `creature_template` SET `ScriptName` = 'npc_q34462' WHERE `creature_template`.`entry` = 80582;
DELETE FROM `creature` WHERE id = 80577;
UPDATE `creature_template` SET `InhabitType` = '4' WHERE `creature_template`.`entry` = 80577;
UPDATE `creature_template` SET `flags_extra` = '128', `InhabitType` = '4' WHERE `creature_template`.`entry` = 80578;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES ('80578', '46598', '0', '0');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES ('80577', '162720', '3', '0');

DELETE FROM `creature_text` WHERE entry = 80582;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(80582, 0, 0, 'Еще раз огромное спасибо тебе, командир. Кабы не ты, эти твари сожрали бы меня заживо. Увидимся в гарнизоне.', 12, 0, 100, 5, 0, 0, 'Оулин Бурошкур to Player');

-- Q: 34775
REPLACE INTO `quest_template_addon` (`ID`,  `SourceSpellID`, `PrevQuestID`) VALUES ('34775', '161438', '34462');