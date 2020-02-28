delete from areatrigger_scripts where entry in (7496);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(7496, 'at_enter_durand_room');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (115157,113134,9232);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 115157, 0, 0, 31, 0, 3, 59884, 0, 0, 0, '', NULL),
(13, 1, 113134, 0, 0, 31, 0, 3, 58605, 0, 0, 0, '', NULL),
(13, 3, 9232, 0, 0, 31, 0, 3, 60040, 0, 0, 0, '', NULL);

delete from creature where id in (59884,59930,59974,60040,58605);

update creature_template set flags_extra = 130 where entry = 59507;

delete from creature_template_addon where entry in (59507);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(59507, 0, 0, 0, 1, 0, '114464');

delete from spell_script_names where spell_id in (114460);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(114460, 'spell_korloff_scorched_earth');