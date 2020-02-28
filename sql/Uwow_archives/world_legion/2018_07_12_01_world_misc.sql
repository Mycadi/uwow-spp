delete from conditions where SourceTypeOrReferenceId = 17 and SourceEntry in (122540,207850,209713,209719,209722);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 122540, 0, 0, 31, 1, 3, 62511, 0, 0, 0, '', NULL),

(17, 0, 207850, 0, 0, 31, 1, 3, 104217, 0, 0, 0, '', NULL),
(17, 0, 207850, 0, 1, 31, 1, 3, 104273, 0, 0, 0, '', NULL),
(17, 0, 207850, 0, 2, 31, 1, 3, 104274, 0, 0, 0, '', NULL),
(17, 0, 207850, 0, 3, 31, 1, 3, 104275, 0, 0, 0, '', NULL),

(17, 0, 209713, 0, 0, 31, 1, 3, 104217, 0, 0, 0, '', NULL),
(17, 0, 209713, 0, 1, 31, 1, 3, 104273, 0, 0, 0, '', NULL),
(17, 0, 209713, 0, 2, 31, 1, 3, 104274, 0, 0, 0, '', NULL),
(17, 0, 209713, 0, 3, 31, 1, 3, 104275, 0, 0, 0, '', NULL),

(17, 0, 209719, 0, 0, 31, 1, 3, 104217, 0, 0, 0, '', NULL),
(17, 0, 209719, 0, 1, 31, 1, 3, 104273, 0, 0, 0, '', NULL),
(17, 0, 209719, 0, 2, 31, 1, 3, 104274, 0, 0, 0, '', NULL),
(17, 0, 209719, 0, 3, 31, 1, 3, 104275, 0, 0, 0, '', NULL),

(17, 0, 209722, 0, 0, 31, 1, 3, 104217, 0, 0, 0, '', NULL),
(17, 0, 209722, 0, 1, 31, 1, 3, 104273, 0, 0, 0, '', NULL),
(17, 0, 209722, 0, 2, 31, 1, 3, 104274, 0, 0, 0, '', NULL),
(17, 0, 209722, 0, 3, 31, 1, 3, 104275, 0, 0, 0, '', NULL);

delete from spell_area where spell in (122540,207850,209713,209719,209722,227077);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `classmask`, `active_event`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(122540, 6297, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(207850, 8079, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(209713, 8079, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(209719, 8079, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(209722, 8079, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(227077, 8022, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11);

delete from disables where sourceType = 0 and entry = 227077;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(0, 227077, 3, '', '', 'Temp Disable');
