/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

ALTER TABLE `phase_definitions` CHANGE `phaseId` `phaseId` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '';

UPDATE `creature_template` SET `flags_extra` = '128' WHERE `creature_template`.`entry` in (100061, 100257);

-- ----------------
--   P A S E
-- ----------------

-- 5086 object 245045 for quest 39495 after spec. event remove go.
update gameobject set phaseId = '5086' WHERE id = 245045;
-- 5084 npc 96493
-- 5305 npc 98354 98229
-- 5322 npc 97297
-- 5257 complete quest 38728

REPLACE INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `PreloadMapID`, `VisibleMapID`, `flags`, `comment`) VALUES 
('7705', '1', '0', '5257 5322 5344 5595 5463 5305 5837 5324 5310 5116 5115 5114 5095 5094 5658 4881 5464 5461 4932 4931 4927 4925 5462 5161 5056 4883 6303 5534 5533 5381 5357 5160 4884 5203 5120 5117 5113 5343 5084 5077', '0', '0', '16', 'Legion. Global'),
('7705', '2', '0', '5086', '0', '0', '16', 'Legion. Global');

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 23 AND SourceGroup = 7705; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, 7705, 2, 0, 0, 14, 0, 39495, 0, 0, 0, 0, '', 'Legion. is non 39495');

-- Misc
UPDATE `creature_template` SET flags_extra = 128, `ScriptName` = 'conversation_announcer' WHERE `entry` in (101748, 101781);
update gameobject set phaseId = '' WHERE id in (101748, 101781);
REPLACE INTO `spell_scene` (`SceneScriptPackageID`, `MiscValue`, `trigerSpell`, `MonsterCredit`, `PlaybackFlags`, `ScriptName`, `comment`) VALUES ('1542', '1542', '0', '0', '0', NULL, '');

--
DELETE FROM `spell_scene` WHERE `SceneScriptPackageID` in (1487, 1451, 1460, 1468, 1470, 1512, 1469, 1479, 1423, 1480, 1493);
INSERT INTO `spell_scene` (`SceneScriptPackageID`, `MiscValue`, `PlaybackFlags`, MonsterCredit, trigerSpell, ScriptName, comment) VALUES
(1487, 1106, 20, 0, 0, 'sceneTrigger_dh_init', 'spell 193525 DH_INIT'), -- 1487 - 1106 crash on 701
(1493, 1116, 27, 0, 0, '', 'spell 191677'), -- 1493 - 1116
(1451, 1053, 20, 0, 0, '', 'spell 189261'), -- 1451 - 1053
(1460, 1061, 26, 0, 0, '', 'spell 189767'), -- 1460 - 1061
(1468, 1077, 20, 0, 0, '', ''), -- 1468 - 1077
(1470, 1079, 20, 0, 0, '', 'spell 191315'), -- 1470 - 1079
(1512, 1142, 20, 0, 0, '', ''), -- 1512 - 1142
(1469, 1078, 20, 0, 0, '', 'spell 190851'), -- 1469 - 1078
(1479, 1094, 20, 0, 0, '', 'spell 191400'), -- 1479 - 1094
(1423, 1016, 26, 0, 0, '', 'spell 187864'), -- 1423 - 1016
(1480, 1095, 20, 0, 0, '', 'spell 191402'); -- 1480 - 1095

DELETE FROM `spell_area` WHERE area in (7705);
REPLACE INTO `spell_area` (`area`, `spell`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
('7705', '179665', '0', '40077', '0', '0', '2', '1', '10', '64'), -- disable all mounts.
('7705', '193525', '0', '40077', '0', '0', '2', '1', '10', '74'), -- 1106
('7705', '191677', '0', '40077', '0', '0', '2', '0', '10', '64'), -- 1116
('7705', '191466', '40378', '0', '0', '0', '2', '0', '66', '64'), -- 1116
('7705', '190793', '40379', '0', '0', '0', '2', '0', '10', '64'), -- 1077
('7705', '192140', '38729', '0', '0', '0', '2', '0', '64', '64');

-- Quest chaine fixes.
REPLACE INTO `quest_template_addon` (`ID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`) VALUES 
('40378', '40077', '0', '0'),
('39279', '40077', '0', '0'),
('39049', '40378', '0', '-39050'),
('38759', '40378', '0', '-39050'),
('40379', '40378', '0', '-39050'),
('39050', '40379', '0', ''),
('38765', '39050', '0', '-38813'),
('38766', '39050', '0', '-38813'),
('38813', '38766', '0', '0'),
('39262', '38813', '0', '0'),
('39495', '39262', '0', '0'),
('38727', '39495', '0', '-38727'),
('38819', '39495', '0', '-38727'),
('38725', '39495', '0', '0'),
('40222', '38725', '0', '0'),
('40051', '40222', '0', '0'),
('39516', '40051', '0', '0'),
('39663', '39516', '0', '0'),
('38728', '39663', '0', '0'),
('38729', '38728', '0', '0');

-- Q: 40077
UPDATE `quest_objectives` SET `ObjectID` = '244898' WHERE `quest_objectives`.`ID` = 280292 AND `QuestID` = 40077;
REPLACE INTO `gameobject_quest_visual` (`goID`, `questID`, `incomplete_state_spell_visual`, `incomplete_state_world_effect`, `complete_state_spell_visual`, `complete_state_world_effect`, `Comment`)
 VALUES ('244898', '40077', '37794', '0', '8743', '0', 'Legion. Q: 40077');
UPDATE `gameobject_template` SET `ScriptName` = 'go_q40077' WHERE `gameobject_template`.`entry` = 244898;
UPDATE `creature_template` SET `ScriptName` = 'npc_q40077' WHERE `creature_template`.`entry` = 93011;

-- Q: 40378
UPDATE gameobject_template SET SpellStateAnimKitID = 1256 WHERE entry IN (241751,241756,241757);
UPDATE `gameobject_template` SET `ScriptName` = 'go_q40378' WHERE `gameobject_template`.`entry` = 241751;
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hastype2`, `hastalent2`, `chance`, `cooldown`, `duration`, `hitmask`, `removeMask`, `targetCountType`, `targetCount`, `actiontype`, `group`, `comment`) VALUES
 ('200255', '200175', '0', '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '');
UPDATE `creature_template` SET `ScriptName` = 'npc_q40378' WHERE `creature_template`.`entry` = 94410;

-- Q: 39279 Area.
REPLACE INTO `area_queststart` (`id`, `quest`) VALUES ('7741', '39279');
UPDATE `gameobject_template` SET `ScriptName` = 'go_q39279' WHERE `gameobject_template`.`entry` in (244439, 244440, 244441, 243873);
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('191827', 'spell_legion_q39279');

-- Q: 39049
DELETE FROM `creature_text` WHERE `Entry` = 93105;
REPLACE INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(93105, 0, 0, 'I can see your secrets...', 12, 0, 100, 0, 0, 55222, 94930, 'Инквизитор Зловеш to Player'),
(93105, 1, 0, 'Enough! My colossal infernal will crush you.', 14, 0, 100, 0, 0, 55224, 99554, 'Инквизитор Зловеш to 0'),
(93105, 2, 0, 'My eyes... My eyes!', 14, 0, 100, 0, 0, 55223, 96010, 'Инквизитор Зловеш to Player');
REPLACE INTO `locales_creature_text` (`entry`, `textGroup`, `id`, `text_loc8`) VALUES
(93105, 0, 0, 'Я вижу все твои тайны...'),
(93105, 1, 0, 'Довольно! Сейчас мой инфернал сокрушит тебя. '),
(93105, 2, 0, 'А-а-а... Мои глаза!');
UPDATE `creature_template` SET `ScriptName` = 'npc_q39049' WHERE `entry` = 93105;

-- Q: 38759
UPDATE `gameobject_template` SET `ScriptName` = 'go_q38759' WHERE `gameobject_template`.`entry` in (242989, 244916, 242987, 242990);
UPDATE `creature_template` SET lootid = 95226 WHERE `entry` = 95226;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES 
('95226', '128227', '-100', '0', '0', '1', '1', '0');

REPLACE INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(93117, 0, 0, 'The pain!', 12, 0, 100, 0, 0, 55226, 96415, 'Изаль Белая Луна to Player'),
(93117, 1, 0, 'A slight setback. I assure you it will not happen again.', 12, 0, 100, 274, 0, 55227, 96644, 'Изаль Белая Луна to Player'),
(93230, 0, 0, 'So weak... hard to contain... my energy.', 12, 0, 100, 0, 0, 55310, 96407, 'Маннетрель Темная Звезда to Player'),
(93230, 1, 0, 'I almost lost the fight against the fel energy inside me.', 12, 0, 100, 6, 0, 55311, 96202, 'Маннетрель Темная Звезда to Player'),
(94377, 0, 0, 'I... will not... give in!', 14, 0, 100, 0, 0, 55090, 96405, 'Циана Ночная Глефа to Player'),
(94377, 1, 0, 'I will never be taken prisoner again. Never!', 12, 0, 100, 5, 0, 55089, 95081, 'Циана Ночная Глефа to Player'),
(94400, 0, 0, 'I will destroy all of you.', 12, 0, 100, 0, 0, 55052, 96411, 'Белат Клинок Рассвета to Player'),
(94400, 1, 0, 'I will kill every last demon in my way.', 12, 0, 100, 5, 0, 55053, 96643, 'Белат Клинок Рассвета to Player');

REPLACE INTO `locales_creature_text` (`entry`, `textGroup`, `id`, `text_loc8`) VALUES
(94400, 0, 0, 'Я вас всех уничтожу.'),
(94400, 1, 0, 'Я убью всех демонов на своем пути.'),
(94377, 0, 0, 'Нет... я… не... сдамся!'),
(94377, 1, 0, 'Я больше никогда не окажусь в клетке!'),
(93117, 0, 0, 'Больно!'),
(93117, 1, 0, 'Досадное недоразумение. Этого больше не повторится.'),
(93230, 0, 0, 'Я слабею... не могу... сдержать... силу...'),
(93230, 1, 0, 'Еще немного, и я бы поддался энергии Скверны.');

-- Q: 40379
UPDATE `gameobject_template` SET `ScriptName` = 'go_q40379' WHERE `gameobject_template`.`entry` = 241756;
UPDATE `creature_template` SET `ScriptName` = 'npc_q40379' WHERE `creature_template`.`entry` = 99914;

-- Q: 39050
UPDATE `quest_template_addon` SET `SourceSpellID` = '201114' WHERE `quest_template_addon`.`ID` = 39050;
UPDATE `gameobject_template` SET `ScriptName` = 'go_q39050' WHERE `gameobject_template`.`entry` = 243335;

-- Q: 38765
UPDATE `creature_template` SET `ScriptName` = 'npc_q38765' WHERE `entry` = 99915;
UPDATE `gameobject_template` SET `ScriptName` = 'go_q38765' WHERE `gameobject_template`.`entry` = 241757;

-- Q: 38766
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `creature_template`.`entry` = 95048;
UPDATE `creature_template` SET `ScriptName` = 'npc_questgiver_93759' WHERE `entry` = 93759;
UPDATE `creature_template` SET `ScriptName` = 'npc_q93221_beliash' WHERE `entry` = 93221;

-- Q: 38813
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=93693; -- gossIP 18447
DELETE FROM smart_scripts WHERE entryorguid = 93693;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(93693, 0, 0, 0, 62, 0, 100, 0, 18447, 0, 0, 0, 11, 191400, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813'),
(93693, 0, 1, 0, 62, 0, 100, 0, 18447, 0, 0, 0, 33, 93693, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813');


UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=94435; -- gossIP 18434
DELETE FROM smart_scripts WHERE entryorguid = 94435;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(94435, 0, 0, 0, 62, 0, 100, 0, 18434, 0, 0, 0, 11, 191402, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813'),
(94435, 0, 1, 0, 62, 0, 100, 0, 18434, 0, 0, 0, 33, 94435, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813');

UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=90247; -- gossIP 17260
DELETE FROM smart_scripts WHERE entryorguid = 90247;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(90247, 0, 0, 0, 62, 0, 100, 0, 17260, 0, 0, 0, 11, 191315, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813'),
(90247, 0, 1, 0, 62, 0, 100, 0, 17260, 0, 0, 0, 33, 90247, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813');

-- Q: 39262
-- npc 96436 gossip 19175
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=96436; -- gossIP 19175
DELETE FROM smart_scripts WHERE entryorguid = 96436;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(96436, 0, 0, 0, 62, 0, 100, 0, 19175, 0, 0, 0, 33, 96436, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813'),
(96436, 0, 1, 0, 62, 0, 100, 0, 19175, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813'),
(96436, 0, 2, 0, 20, 0, 100, 0, 39262, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813'),
-- hack
(96436, 0, 3, 0, 62, 0, 100, 0, 19175, 0, 0, 0, 11, 188501, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813'),
(96436, 0, 4, 0, 62, 0, 100, 0, 19175, 0, 0, 0, 33, 96437, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q38813');

-- Q: 39495
UPDATE `creature_template` SET `ScriptName` = 'npc_q39495_caza' WHERE `entry` = 96441;

-- Q: 38727
UPDATE `gameobject_template` SET `ScriptName` = 'go_q38727' WHERE `gameobject_template`.`entry` in(243965, 243968, 243967);

-- Q: 38819 - proggress with

-- Q: 38725
-- Q: 40222
UPDATE `creature_template` SET flags_extra = 128, `ScriptName` = 'npc_q40222_progres1' WHERE `entry` = 103429;
UPDATE `creature_template` SET lootid = 98986, `ScriptName` = 'npc_q39495_prolifica' WHERE `entry` = 98986;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES 
('98986', '129957', '-100', '0', '0', '1', '1', '0');

-- Q: 40051 

-- Q: 39516
-- NPC 99045 GOSSIP 18937 SPELL 195021
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=99045;
DELETE FROM smart_scripts WHERE entryorguid = 99045;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(99045, 0, 0, 0, 62, 0, 100, 0, 18937, 0, 0, 0, 11, 195021, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q39516');
-- NPC 96420 GOSSIP 18936 SPELL 195019
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=96420;
DELETE FROM smart_scripts WHERE entryorguid = 96420;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(96420, 0, 0, 0, 62, 0, 100, 0, 18936, 0, 0, 0, 11, 195019, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q39516');
-- NPC 96655 GOSSIP 18935 SPELL 194996
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=96655;
DELETE FROM smart_scripts WHERE entryorguid = 96655;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(96655, 0, 0, 0, 62, 0, 100, 0, 18935, 0, 0, 0, 11, 194996, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q39516');
-- NPC 93127 GOSSIP 18435 SPELL 195020
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=93127;
DELETE FROM smart_scripts WHERE entryorguid = 93127;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(93127, 0, 0, 0, 62, 0, 100, 0, 18435, 1, 0, 0, 11, 195020, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q39516');
-- NPC 96652 GOSSIP 18823 SPELL 195022
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=96652;
DELETE FROM smart_scripts WHERE entryorguid = 96652;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(96652, 0, 0, 0, 62, 0, 100, 0, 18823, 0, 0, 0, 11, 195022, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q39516');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 18937, 0, 0, 0, 9, 0, 39516, 0, 0, 0, 0, '', 'Show gossip option if Player has Quest 39516'),
(15, 18936, 0, 0, 0, 9, 0, 39516, 0, 0, 0, 0, '', 'Show gossip option if Player has Quest 39516'),
(15, 18935, 0, 0, 0, 9, 0, 39516, 0, 0, 0, 0, '', 'Show gossip option if Player has Quest 39516'),
(15, 18435, 1, 0, 0, 9, 0, 39516, 0, 0, 0, 0, '', 'Show gossip option if Player has Quest 39516'),
(15, 18823, 0, 0, 0, 9, 0, 39516, 0, 0, 0, 0, '', 'Show gossip option if Player has Quest 39516');

-- Q: 39663
-- NPC 96653 GOSSIP 18776 SPELL 192136
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=96653;
DELETE FROM smart_scripts WHERE entryorguid = 96653;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(96653, 0, 0, 0, 62, 0, 100, 0, 18776, 0, 0, 0, 11, 192136, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q39663');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 18776, 0, 0, 0, 14, 0, 39663, 0, 0, 1, 0, '', 'Show gossip option if Player not non Quest 39663');

-- This should go to hotfixes db.
-- REPLACE INTO `taxi_nodes` (`ID`, `PosX`, `PosY`, `PosZ`, `Name`, `MountCreatureID1`, `MountCreatureID2`, `MapOffset1`, `MapOffset2`, `MapID`, `ConditionID`, `LearnableIndex`, `Flags`, `VerifiedBuild`) VALUES ('1733', '1452', '1688', '47.3', 'Quest Path 5286: 7.0 DH-Mardum - Illidari Foothold -> The Fel Hammer (ELM)', '99257', '99257', '0', '0', '1481', '0', '0', '0', '0');
-- REPLACE INTO `taxi_path` (`ID`, `From`, `To`, `Cost`, `VerifiedBuild`) VALUES ('5286', '1733', '1732', '0', '0');

-- Q: 38728
UPDATE `creature_template` SET lootid = 93802, `ScriptName` = 'npc_q38728_tyranna' WHERE `entry` = 93802;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES 
('93802', '124672', '-100', '0', '0', '1', '1', '0');
UPDATE `creature_template` SET flags_extra = 128, `ScriptName` = 'npc_q38728_progres1' WHERE `entry` in (101760);

-- Q: 38729 GO 245728
UPDATE `gameobject_template` SET `ScriptName` = 'go_q38729' WHERE `gameobject_template`.`entry` in(245728);
-- go 244466 cast 192140 at complete  + 192141
UPDATE `gameobject_template` SET `flags` = '0' WHERE `gameobject_template`.`entry` = 244466;
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hastype2`, `hastalent2`, `chance`, `cooldown`, `duration`, `hitmask`, `removeMask`, `targetCountType`, `targetCount`, `actiontype`, `group`, `comment`) VALUES ('192140', '192141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', 'Q: 38729 GO 245728');