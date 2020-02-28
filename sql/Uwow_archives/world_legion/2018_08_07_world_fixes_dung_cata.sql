UPDATE `creature_template` SET `ScriptName`='npc_stalactite_stalker' WHERE (`entry`='43159');

UPDATE `creature_template` SET `npcflag`='129', `unit_flags2`='0' WHERE (`entry`='87065');
UPDATE `creature_template` SET `AIName`='' WHERE (`entry`='44819');
UPDATE `creature_template` SET `AIName`='' WHERE (`entry`='54431');
UPDATE `creature_template` SET `AIName`='' WHERE (`entry`='54445');
UPDATE `creature_template` SET `AIName`='' WHERE (`entry`='54123');

DELETE FROM creature_text WHERE entry in (49045);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(49045, 0, 0, 'А-а-а-а!', 12, 0, 100, 0, 0, 0, 45530, 'Ауг to Бесноватый кроколиск');

 -- Трон Приливов
DELETE FROM `vehicle_template_accessory` WHERE (`EntryOrAura`='45030');
DELETE FROM `vehicle_attachment_offset` WHERE (`entry`='45030');

UPDATE `creature_template_addon` SET `auras`='46598' WHERE (`entry`='45030');
UPDATE `creature_template_addon` SET `auras`='46598' WHERE (`entry`='44581');
UPDATE creature_template SET InhabitType = 4 WHERE entry in (45030,40655,44581,44566);
UPDATE `creature` SET `orientation`='2.279048' WHERE (`guid`='194292');
UPDATE `creature` SET `orientation`='2.073103' WHERE (`guid`='194249');
UPDATE `creature_template_wdb` SET `Displayid1`='0' WHERE (`Entry`='45030');
UPDATE `creature_template` SET `flags_extra`='536870912', lootid = 0 WHERE (`entry`='44566');
UPDATE `creature_template` SET `ScriptName`='npc_ozumat_vehicle' WHERE (`entry`='45030');
UPDATE `creature_template` SET unit_flags = 256, `ScriptName`='npc_ozumat_passanger' WHERE (`entry`='40655');
UPDATE `creature` SET `modelid`='0' WHERE (`guid`='194249');
UPDATE `creature_text` SET `BroadcastTextID`='44273' WHERE (`Entry`='40792') AND (`Text`='Your kind... cannot be... trusted...');
UPDATE `creature_text` SET `BroadcastTextID`='44274' WHERE (`Entry`='40792') AND (`Text`='You are unworthy of my domain!');
UPDATE `creature_text` SET `BroadcastTextID`='44269' WHERE (`Entry`='40792') AND (`Text`='Patience guests. The waters are nearly cleansed.');
UPDATE `creature_text` SET `BroadcastTextID`='44275' WHERE (`Entry`='40792') AND (`Text`='My attention was wasted on you!');
UPDATE `creature_text` SET `BroadcastTextID`='50509' WHERE (`Entry`='40586') AND (`Text`='Ulthok... stop them...');
UPDATE `creature_text` SET `BroadcastTextID`='43121' WHERE (`Entry`='39959') AND (`Text`='Meddlesome gnats, you\'ve thought us defeated so easily.');

DELETE FROM npc_spellclick_spells WHERE npc_entry = 44581;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES
('44581', '46598', '1');

DELETE FROM world_visible_distance WHERE type = 2 and id = 5004;
INSERT INTO `world_visible_distance` (`type`, `id`, `distance`, `comment`) VALUES
('2', '5004', '300', 'Throne of the Tides');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13', '1', '76953', '0', '0', '31', '0', '3', '36171', '0', '0', '0', '', 'to target'),
('13', '1', '84037', '0', '0', '31', '0', '3', '44566', '0', '0', '0', '', ' to target');

REPLACE INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
('40792', '12', '0', 'Озумат слаб, бей сейчас!', '42', '0', '0', '0', '0', '0', '50863', '0', '0', '0', 'whisper');

 -- End Time
UPDATE `creature_template` SET `faction`='14' WHERE (`entry`='54952');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='54123');
UPDATE `spell_target_position` SET `target_position_x`='3840.76', `target_position_y`='913.4917', `target_position_z`='56.02316', `target_orientation`='2.70097' WHERE (`id`='101398');

 -- Misc
UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask | 33554432 WHERE entry in (43873,43875,39625,43878);
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='54632');
UPDATE creature_template SET mechanic_immune_mask = `mechanic_immune_mask` &~33554432 WHERE entry = 54853;

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13', '1', '75692', '0', '0', '31', '0', '4', '0', '0', '0', '0', '', 'to target'),
('13', '2', '75692', '0', '0', '31', '0', '4', '0', '0', '0', '0', '', 'to target'),
('13', '1', '75664', '0', '0', '31', '0', '4', '0', '0', '0', '0', '', 'to target');

 -- Tolvir
UPDATE `creature_template_wdb` SET `Displayid1`='0' WHERE (`Entry`='44712');
UPDATE `creature_template_wdb` SET `Displayid1`='0' WHERE (`Entry`='44840');
UPDATE `creature_template_wdb` SET `Displayid1`='0' WHERE (`Entry`='44586');
UPDATE `creature_template_wdb` SET `Displayid1`='0' WHERE (`Entry`='44711');
UPDATE creature_text SET type = 14 WHERE entry in (44819,44577);
UPDATE creature_template SET flags_extra = 128 WHERE entry = 45124;
UPDATE `creature_template` SET `InhabitType`='4' WHERE (`entry`='44819');
UPDATE `creature_text` SET `BroadcastTextID`='45483' WHERE (`Entry`='44819') AND (`Text`='Winds of the south, rise and come to your masters aid!');
UPDATE `creature_text` SET `BroadcastTextID`='45486' WHERE (`Entry`='44819') AND (`Text`='Your city will be buried! Your lives forfeit to the elements! ');
DELETE FROM `vehicle_template_accessory` WHERE (`EntryOrAura`='44798') AND (`seat_id`='0');
UPDATE `creature_text` SET `BroadcastTextID`='49310' WHERE (`Entry`='44577') AND (`Text`='Invaders! You shall go no further! ');
UPDATE `creature_text` SET `BroadcastTextID`='49314' WHERE (`Entry`='44577') AND (`Text`='Tread Lightly! ');
UPDATE `creature_text` SET `BroadcastTextID`='49311' WHERE (`Entry`='44577') AND (`Text`='Insolent rats!');

 -- the vortex pinnacle
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='45704');

DELETE FROM spell_script_names WHERE spell_id IN (85294,86456);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('85294', 'spell_lurk_search'),
('86456', 'spell_lurk_search_dummy');

 -- Grim Batol
UPDATE creature SET spawndist = 0 WHERE id = 40484;
DELETE FROM creature WHERE id = 40486;

DELETE FROM spell_target_filter WHERE spellId IN (75520,74945,76194,76138);
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
('75520', '0', '7', '0', '0', '0', '0', '0', '0', '1', '2', '1', '0', '0', '0', 'Сумеречная порча'),
('76194', '0', '15', '0', '0', '0', '0', '0', '0', '1', '2', '1', '0', '0', '0', 'Сумеречный взрыв'),
('76138', '0', '8', '0', '0', '0', '0', '0', '0', '7', '2', '1', '0', '0', '0', 'Gronn Knockback Cosmetic'),
('74945', '0', '7', '0', '0', '0', '0', '0', '0', '1', '2', '5', '0', '0', '0', 'Шквал горящих стрел');

DELETE FROM creature_text WHERE Entry = 40484 AND GroupID = 5;
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
('40484', '5', '0', '%s призывает |cFFFF0000безликого осквернителя|r!', '41', '0', '0', '0', '0', '0', '49568', '0', '0', '0', '');

UPDATE creature_template SET flags_extra = 1 WHERE entry IN (40484,39625,40177,40319);
UPDATE `creature_text` SET `Type`='14' WHERE (`Entry`='40319') AND (`Text`='An easy kill!');
UPDATE `creature_text` SET `Type`='14' WHERE (`Entry`='40319') AND (`Text`='BY FIRE BE... BURNED!');

DELETE FROM `conditions` WHERE `SourceEntry` IN (74670, 90250, 90249, 90170, 74945, 75071) AND `SourceTypeOrReferenceId`= 13;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ScriptName`, `Comment`) VALUES
(13, 1, 74670, 0, 0, 31, 0, 3, 40040, 0, 0, '', 'Blitz - Target Blitz Stalker'),
(13, 1, 90250, 0, 0, 31, 0, 3, 40040, 0, 0, '', 'Blitz - Target Blitz Stalker'),
(13, 1, 90249, 0, 0, 31, 0, 3, 40030, 0, 0, '', 'Ground Siege - Target Ground Siege Stalker'),
(13, 1, 90170, 0, 0, 31, 0, 3, 39625, 0, 0, '', 'Modgud''s Malice - Target General Umbriss'),
(13, 2, 90170, 0, 0, 31, 0, 3, 39625, 0, 0, '', 'Modgud''s Malice - Target General Umbriss'),
(13, 4, 90170, 0, 0, 31, 0, 3, 45467, 0, 0, '', 'Modgud''s Malice - Target Trogg Dweller'),
(13, 1, 74945, 0, 0, 31, 0, 3, 40197, 0, 0, '', 'Flame Arrow Barrage - Target Twilight Archer'),
(13, 1, 75071, 0, 0, 31, 0, 3, 40255, 0, 0, '', 'Fixate Effect - Target Fixate Stalker');

DELETE FROM `creature_template_addon` WHERE `entry`= 48350;
INSERT INTO `creature_template_addon` (`entry`, `bytes2`, `auras`) VALUES
(48350, 1, 74699);

UPDATE `creature_template` SET `flags_extra`= `flags_extra` | 0x20000000 WHERE `entry` IN (45467, 39984, 48350, 48348);
UPDATE `creature_template` SET `flags_extra`= `flags_extra`| 0x40000000 | 1,  `mechanic_immune_mask`= 617299839 WHERE `entry`= 48702;
UPDATE `creature_template` SET `unit_flags`= 34078720, `flags_extra`= 131 WHERE `entry`= 40228;
UPDATE `creature_template` SET `unit_flags`= 33554432, `flags_extra`= 128 WHERE `entry`= 40255;
UPDATE `creature_template` SET `faction`= 7, `unit_flags`= 33554432, `flags_extra`= 128 WHERE `entry`= 48711;

-- TheStonecore
DELETE FROM spell_script_names WHERE spell_id IN (92426);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('92426', 'spell_paralyze');

DELETE FROM creature_text WHERE Entry = 42188 AND GroupID = 4;
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
('42188', '4', '0', '|TInterface\\Icons\\ability_warrior_shieldreflection.blp:20|t Озрук накладывает заклинание |cFFFF0000|Hspell:78939|h[Элементиевая защита]|h|r!', '0', '0', '0', '0', '0', '0', '46010', '0', '0', '0', '');

UPDATE creature_template SET flags_extra = 1 WHERE entry IN (43438,42188,43214,42333);
UPDATE `creature_template` SET `flags_extra`='3' WHERE (`entry`='43438');

 -- Throne of the Tides
DELETE FROM `vehicle_attachment_offset` WHERE (`entry`='40825') AND (`seat_id`='0');
DELETE FROM `vehicle_template_accessory` WHERE (`EntryOrAura`='40825') AND (`seat_id`='0');
UPDATE `creature_template` SET `InhabitType`='3' WHERE (`entry`='40633');
UPDATE `creature_template` SET `InhabitType`='3' WHERE (`entry`='40765');
UPDATE `creature_text` SET `Sound`='0' WHERE (`Entry`='40765') AND (`Text`='Если падет один воин – на его место встанет тысяча...');
UPDATE `creature_text` SET `Sound`='0' WHERE (`Entry`='40765') AND (`Text`='Они не погибнут...');
 -- misc
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='54633');

 -- hotfix
UPDATE `broadcast_text` SET `SoundEntriesID2`='18542' WHERE (`ID`='50529');
UPDATE `broadcast_text` SET `SoundEntriesID1`='18543', `SoundEntriesID2`='18543' WHERE (`ID`='95145');