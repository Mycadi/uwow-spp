DELETE FROM `spell_area` WHERE `spell`='68682';
INSERT INTO `spell_area` VALUES ( '68682','4714','0','0','0','0','0','0','2','0','64','11');

DELETE FROM `spell_area` WHERE `spell`='220415';
INSERT INTO `spell_area` VALUES ( '220415','7334','0','0','0','0','0','0','2','0','64','11');

DELETE FROM `spell_area` WHERE `spell`='63163';
INSERT INTO `spell_area` VALUES ( '63163','210','0','0','0','0','0','0','2','0','64','11');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry = 68682;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 68682, 0, 0, 31, 0, 3, 36312, 0, 0, 0, '', NULL);

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry = 220415;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 220415, 0, 0, 31, 0, 3, 110818, 0, 0, 0, '', NULL);

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry = 63163;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 63163, 0, 0, 31, 0, 3, 33519, 0, 0, 0, '', NULL);