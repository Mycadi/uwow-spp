delete from achievement_criteria_data where ScriptName = 'achievement_iron_dwarf_medium_rare';
delete from achievement_criteria_data where criteria_id in (10062,10063,39334);

INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(33104, 11, 0, 0, 'achievement_iron_dwarf_medium_rare'),
(33105, 11, 0, 0, 'achievement_iron_dwarf_medium_rare'),
(10062, 11, 0, 0, 'achievement_quick_shave_deprecated_disable'),
(10063, 11, 0, 0, 'achievement_quick_shave_deprecated_disable'),
(39334, 11, 0, 0, 'achievement_quick_shave');

update creature_template set ScriptName = 'npc_darkrune_guardian' where entry = 33388;