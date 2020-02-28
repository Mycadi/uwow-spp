UPDATE `creature_template` SET `ScriptName`='npc_moonfeather_statue' WHERE (`entry`='99555');

DELETE FROM spell_aura_trigger WHERE spell_id in (195816);
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `option2`, `target`, `caster`, `bp0`, `bp1`, `bp2`, `effectmask`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `slot`, `comment`) VALUES
('195816', '195831', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Совукупность признаков лихорадки');

DELETE FROM spell_script_names WHERE spell_id = 195776;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('195776', 'spell_moonfeather_fever');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13', '1', '195776', '0', '0', '31', '0', '4', '0', '0', '0', '0', '', 'Лихорадка лунного совуха');

DELETE FROM spell_target_filter WHERE spellId = 195776;
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
('195776', '0', '8', '1', '-195776', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Лихорадка лунного совуха');
