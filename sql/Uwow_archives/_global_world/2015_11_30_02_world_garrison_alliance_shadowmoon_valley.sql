REPLACE INTO `area_queststart` (`id`, `quest`) VALUES (7760, 34575);
--
REPLACE INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
('1', '36100', '0', '', '', ''),
('1', '37288', '0', '', '', ''),
('1', '34778', '0', '', '', ''),
('1', '34787', '0', '', '', ''),
('1', '33359', '0', '', '', ''),
('1', '34820', '0', '', '', ''),
('1', '34779', '0', '', '', ''),
('1', '33814', '0', '', '', ''),
('1', '36163', '0', '', '', ''),
('1', '36160', '0', '', '', ''),
('1', '34026', '0', '', '', ''),
('1', '36592', '0', '', '', '');

REPLACE INTO `quest_template_addon` (`ID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`) VALUES 
('34584', '34583', '34585', '-34584'),
('34616', '34583', '34585', '-34584'),
('34586', '34585', '0', '0'),
('35176', '34586', '34587', '-35174'),
('35174', '34586', '34587', '-35174'),
('35166', '34586', '34587', '-35174'),
('34646', '34587', '0', '0'),
('34692', '34646', '0', '0');

DELETE FROM `spell_area` WHERE area in (6719, 7078);
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
('155075', '7078', '0', '0', '0', '0', '2', '1', '10', '64'),
('171474', '7078', '0', '0', '0', '0', '2', '1', '10', '64'),
('161694', '7078', '34587', '0', '0', '0', '2', '1', '64', '64');

-- 4352 мир
-- 3329 - фаза интро перед квестом.
-- 3639 - 34582 - после взятие, прокнул на смене арреи.
-- 3353 - while not complete 34582. Не увидел ничего подозрительного.
-- 3695 - at SMSG_QUEST_UPDATE_ADD_CREDIT 34583 id 84778 remove 79242 для ивента порой прячет кадгара 79242. у нас пусть будет всегда.
-- 3290 - after complete 34583
-- 2559 - after reward 34586
-- 3609 - go 231826  231851 npc 79205 81670 for q. 35166
-- 3509 3510 3511 3523 3524 3525 - new after take 34646 npc 79446
-- 3666 - new after complete - npc 3666 on garrison.
-- 3464 - garrison after complete 34646 npc 79611
DELETE FROM `phase_definitions` WHERE `zoneId` in (6719, 7078);
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 23 AND SourceGroup = 7078;

REPLACE INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `PreloadMapID`, `VisibleMapID`, `flags`, `comment`) VALUES
-- 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3329 3353 3420 3434 3695 3926 3934 4086 4318 4352
(6719, 1, 0, '4352', 0, 0, 16, 'Draenor. ShadowMoon.Valley. фаза зоны'),
-- 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3353 3420 3434 3695 3926 3934 4086 4318 4352               while not take 34582
(6719, 2, 0, '3329', 0, 0, 16, 'Draenor. ShadowMoon.Valley. Пока не взят квест  34582'), 
-- 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3353 3420 3434 3639 3695 3926 3934 4086 4318 4352          while take 34582
(6719, 3, 0, '3639', 0, 0, 16, 'Draenor. ShadowMoon.Valley.  появляется когда выполняем 34582 квест.'),
-- 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3420 3434 3639 3695 3926 3934 4086 4318 4352               while not Complete 34582
(6719, 4, 0, '3353', 0, 0, 16, 'Draenor. ShadowMoon.Valley. while not complete or reward.'),
-- 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3420 3434 3639 3926 3934 4086 4318 4352                    at SMSG_QUEST_UPDATE_ADD_CREDIT 34583 id 84778
(6719, 5, 0, '3695', 0, 0, 16, 'Draenor. ShadowMoon.Valley. кадгар'),
-- 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3290 3420 3434 3639 3926 3934 4086 4318 4352
(6719, 6, 0, '3290', 0, 0, 16, 'Draenor. ShadowMoon.Valley. '),
-- 2559 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3290 3420 3434 3639 3695 3926 3934 4086 4352          после создания гарнизона.
(6719, 7, 0, '2559', 0, 0, 16, 'Draenor. ShadowMoon.Valley.'),
-- 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3290 3420 3434 3639 3695 3926 3934 4086 4352
-- 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3290 3420 3434 3695 3926 3934 4086 4352 
-- 2559 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3290 3420 3434 3639 3695 3926 3934 4086 4352          выход из гарнизона.
-- 2559 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3290 3420 3434 3609 3695 3926 3934 4086 4352          01/04/2015 23:13:35
(6719, 8, 0, '3609', 0, 0, 16, 'Draenor. ShadowMoon.Valley.q35176 q35174'),
-- 2559 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3290 3420 3434 3695 3926 3934 4086 4352
-- 2559 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3290 3420 3434 3509 3510 3511 3523 3524 3525 3695 3926 3934 4086 4352 - появление квестового 34646
(6719, 9, 0, '3509 3510 3511 3523 3524 3525', 0, 0, 16, 'Draenor. ShadowMoon.Valley.q 34646'),
-- 2559 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3290 3420 3434 3509 3510 3511 3523 3524 3525 3666 3695 3926 3934 4086 4352 after complete q34646
(7078, 10, 0, '3666', 0, 0, 16, 'Draenor. ShadowMoon.Valley.q34646'),
(7078, 11, 0, '3464', 0, 0, 16, 'Draenor. ShadowMoon.Valley.q34646'),
-- 2487 2501 2559 2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3290 3420 3434 3585 3666 3695 3926 3934 4086 4352

('6719', '95', '0', '0', '1158', '0', '24', 'Draenor. ShadowMoon. Garrison terrain lvl.1 '),
(6719, 100, 0, '2877 2884 2988 3054 3055 3122 3184 3238 3244 3253 3420 3434 3926 3934 4086 4318', 0, 0, 16, 'Draenor. ShadowMoon.Valley. general.');
UPDATE `phase_definitions` SET `PreloadMapID` = '0' WHERE `phase_definitions`.`zoneId` = 6719 AND `phase_definitions`.`entry` = 95;

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 23 AND SourceGroup = 6719;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, 6719, 2, 0, 0, 14, 0, 34582, 0, 0, 0, 0, '', 'Draenor. ShadowMoon.Valley. 34582'),
(23, 6719, 3, 0, 0, 14, 0, 34582, 0, 0, 1, 0, '', 'Draenor. ShadowMoon.Valley. 34582'),
(23, 6719, 4, 0, 0, 28, 0, 34582, 0, 0, 1, 0, '', 'Draenor. ShadowMoon.Valley. 34582'),
(23, 6719, 4, 0, 0, 8, 0, 34582, 0, 0, 1, 0, '', 'Draenor. ShadowMoon.Valley. 34582'),
(23, 6719, 6, 0, 0, 8, 0, 34583, 0, 0, 0, 0, '', 'Draenor. ShadowMoon.Valley. 34583'),
(23, 6719, 7, 0, 0, 8, 0, 34586, 0, 0, 0, 0, '', 'Draenor. ShadowMoon.Valley. 34586'),
(23, 6719, 8, 0, 0, 14, 0, 35166, 0, 0, 1, 0, '', 'Draenor. ShadowMoon.Valley. q35166'),
(23, 6719, 8, 0, 0, 8, 0, 35166, 0, 0, 1, 0, '', 'Draenor. ShadowMoon.Valley. q35166'),
(23, 6719, 8, 0, 1, 14, 0, 35174, 0, 0, 1, 0, '', 'Draenor. ShadowMoon.Valley. q35174'),
(23, 6719, 8, 0, 1, 8, 0, 35174, 0, 0, 1, 0, '', 'Draenor. ShadowMoon.Valley. q35174'),
(23, 6719, 9, 0, 0, 14, 0, 34646, 0, 0, 1, 0, '', 'Draenor. ShadowMoon.Valley. after take 34646'),
(23, 7078, 10, 0, 0, 28, 0, 34646, 0, 0, 0, 0, '', 'Draenor. ShadowMoon.Valley. after take 34646'),
(23, 7078, 10, 0, 0, 22, 0, 1158, 0, 0, 0, 0, '', 'Draenor. ShadowMoon.Valley. after take 34646'),

(23, 6719, 95, 0, 0, 8, 0, 34583, 0, 0, 0, 0, '', 'Draenor. ShadowMoon.Valley. 34583'),
(23, 7078, 11, 0, 0, 8, 0, 34646, 0, 0, 0, 0, '', 'Draenor. ShadowMoon.Valley. after take 34646'),
(23, 7078, 11, 0, 0, 22, 0, 1158, 0, 0, 0, 0, '', 'Draenor. ShadowMoon.Valley. after take 34646');

-- Q34583 spell 160405 npc 82125
DELETE FROM `creature_text` WHERE entry = 82125;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(82125, 0, 0, 'Я могу открыть портал в Штормград, но лишь ненадолго.', 12, 0, 100, 0, 0, 44990, 'Верховный маг Кадгар to Player');

-- Q:34584
REPLACE INTO `gameobject_quest_visual` (`goID`, `questID`, `incomplete_state_spell_visual`, `incomplete_state_world_effect`, `complete_state_spell_visual`, `complete_state_world_effect`, `Comment`) VALUES
('230335', '34584', '37794', '2100', '0', '0', '');

-- Q: 34586 original 161031 161033
DELETE FROM `smart_scripts` WHERE `entryorguid` = 79243;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(79243, 0, 0, 1, 62, 0, 100, 0, 16871, 0, 0, 0, 85, 161033, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on gossip select - cast spell'),
(79243, 0, 1, 1, 62, 0, 100, 0, 16871, 0, 0, 0, 85, 161031, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on gossip select - cast spell');

-- Q: 35176

-- cast 164548
UPDATE `creature_template` SET `gossip_menu_id`=16613, `AIName`='SmartAI' WHERE `entry`=84455;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(16613, 24135); -- 84455
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `optionNPC`, `option_text`, `box_coded`, `box_money`, `box_text`) VALUES
(16613, 0, 0, 'Пора вернуться к работе.', 0, 0, ''); -- 84455
DELETE FROM `creature_text` WHERE entry = 84455;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(84455, 0, 0, 'Так, парни, перерыв закончился.', 12, 0, 100, 0, 0, 0, 'Помощница Яркий Камень to Player');
DELETE FROM smart_scripts WHERE entryorguid = 84455;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(84455, 0, 0, 0, 62, 0, 100, 0, 16613, 0, 0, 0, 11, 164548, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q335176 cast'),
(84455, 0, 1, 0, 62, 0, 100, 0, 16613, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q335176 say');

-- cast 164249
UPDATE `creature_template` SET `gossip_menu_id`=16598, `AIName`='SmartAI' WHERE `entry`=81441;
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `optionNPC`, `option_text`, `box_coded`, `box_money`, `box_text`) VALUES
(16598, 0, 0, 'Забрать донесение Шелли.', 0, 0, ''); -- 81441
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(16598, 24100); -- 81441
DELETE FROM `creature_text` WHERE entry = 81441;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(81441, 0, 0, 'Собирай всех, пора переходить к активным действиям. А если найдешь Пипперса, сообщи мне... этот прохиндей стащил мои любимые шлепанцы.', 12, 0, 100, 0, 0, 0, 'Шелли Хэмби to Player');
DELETE FROM smart_scripts WHERE entryorguid = 81441;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(81441, 0, 0, 0, 62, 0, 100, 0, 16598, 0, 0, 0, 11, 164249, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q335176 cast'),
(81441, 0, 1, 0, 62, 0, 100, 0, 16598, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q335176 say');

-- Q: 34587
DELETE FROM `creature_text` WHERE entry = 77209;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(77209, 0, 0, 'Благодаря тебе у нас появился отличный форпост в Долине Призрачной Луны.', 12, 0, 100, 396, 0, 0, 'Барос Алекстон to Player'),
(77209, 1, 0, 'Может, на корабле орков найдется что-нибудь полезное?.. Кроме этих сверл для зубов.', 12, 0, 100, 1, 0, 43529, 'Барос Алекстон to Player'),
(77209, 2, 0, 'Уф. Может, сегодня мне даже удастся полюбоваться на звезды. Смена обстановки не помешает.', 12, 0, 100, 4, 0, 43533, 'Барос Алекстон to Player'),
(77209, 3, 0, 'Фу, некоторые припасы совсем промокли и... какие-то липкие. Можно использовать, но выглядят они мерзко.', 12, 0, 100, 1, 0, 43530, 'Барос Алекстон to Player'),
(77209, 4, 0, 'Казармы мы мигом построим. Командир, следуй за мной.', 12, 0, 100, 0, 0, 42439, 'Барос Алекстон to Player'),
(77209, 5, 0, 'Строительство других зданий займет гораздо больше времени.', 12, 0, 100, 0, 0, 42439, 'Барос Алекстон to Player'),
(77209, 6, 0, 'Прими работу, когда пожелаешь.', 12, 0, 100, 0, 0, 42439, 'Барос Алекстон to Player'),
(77209, 7, 0, 'Казармы выглядят превосходно. Поговори с Мараадом, а я пока полюбуюсь своей искусной работой.', 12, 0, 100, 0, 0, 42439, 'Барос Алекстон to Player');

UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=77209;
DELETE FROM smart_scripts WHERE entryorguid = 77209;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(77209, 0, 0, 0, 47, 0, 100, 0, 34587, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'At gossip at take 34587');

UPDATE `garrison_plot_finalize_info` SET `allianceX` = '1892.78', `allianceY` = '240.9705', `allianceZ` = '76.63956', `allianceO` = '2.789496' WHERE `garrison_plot_finalize_info`.`garrPlotInstanceId` = 23;

DELETE FROM `garrison_building_gameobject` WHERE map =1158 ;
INSERT INTO `garrison_building_gameobject` (`plotID`, `BuildID`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`) VALUES
-- Alliance. Big. empty building
(23, 0, 231855, 1158, 1906.99, 235.7743, 77.60764, 3.348588, 0, 0, 0, 1);

DELETE FROM `garrison_building_creature` WHERE map =1158 ;
INSERT INTO `garrison_building_creature` (`plotID`, `BuildID`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(23, 26, 77379, 1158, 1897.158, 241.4114, 76.98568, 2.097671);

-- Q: 34646 cast 177492
UPDATE `npc_spellclick_spells` set cast_flags = 1 WHERE`spell_id` = 155071;
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('155071', 'spell_interract');

-- Q: 34692
REPLACE INTO `garrison_mission_line` (`ID`, `NextMission`, `ReqGarrFollowerID`, `IsRandom`, `Comment`) VALUES
('66', '65', '34', '0', 'Alliance'),
('86', '88', '153', '0', 'Alliance'),
('88', '90', '0', '0', 'Alliance'),
('89', '0', '0', '1', 'Alliance'),
('91', '0', '0', '1', 'Alliance'),
('333', '0', '463', '0', 'Alliance'),
('137', '0', '0', '1', 'taken from snif on Alliance'),
('207', '0', '0', '1', 'taken from snif on Alliance'),
('369', '0', '0', '1', 'taken from snif on Alliance'),
('151', '0', '0', '1', 'taken from snif on Alliance'),
('176', '0', '0', '1', 'taken from snif on Alliance'),
('188', '0', '0', '1', 'taken from snif on Alliance'),
('171', '0', '0', '1', 'taken from snif on Alliance'),
('155', '0', '0', '1', 'taken from snif on Alliance');