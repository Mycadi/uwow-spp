REPLACE INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_flags`, `action_type`, `target_type`, `comment`) VALUES
('39294', '3', '60', '1', '8', '1', 'React Passive');

DELETE FROM spell_target_filter WHERE spellId in (75245,74984,75520);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
('75245', '15', '0', '0', '0', '0', '0', '0', '1', '2', '1', '0', '0', '0', 'Горящая стрела тьмы'),
('74984', '15', '0', '0', '0', '0', '0', '0', '1', '2', '1', '0', '0', '0', 'Могучий топот'),
('75520', '7', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', 'Сумеречная порча');

UPDATE `creature_template` SET `ScriptName`='npc_twilight_archer' WHERE `entry`=40197;
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=40197;

DELETE FROM spell_script_names WHERE spell_id in (74846);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('74846', 'spell_bleeding_wound');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13', '1', '75664', '0', '0', '31', '0', '4', '0', '0', '0', '0', '', 'to player');