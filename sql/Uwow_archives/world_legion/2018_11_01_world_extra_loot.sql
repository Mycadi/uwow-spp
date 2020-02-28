REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
('111243', '43895'),
('111243', '43896'),
('111243', '43897');

/*UPDATE `quest_template_addon` SET `NextQuestID`='47864' WHERE (`ID`='47851');
UPDATE `quest_template_addon` SET `PrevQuestID`='47851', `NextQuestID`='47865' WHERE (`ID`='47864');
UPDATE `quest_template_addon` SET `PrevQuestID`='47864' WHERE (`ID`='47865');
UPDATE `quest_template_addon` SET `NextQuestID`='43893' WHERE (`ID`='43892');
UPDATE `quest_template_addon` SET `PrevQuestID`='43892', `NextQuestID`='43894' WHERE (`ID`='43893');
UPDATE `quest_template_addon` SET `PrevQuestID`='43893' WHERE (`ID`='43894');
UPDATE `quest_template_addon` SET `NextQuestID`='43896' WHERE (`ID`='43895');
UPDATE `quest_template_addon` SET `PrevQuestID`='43895', `NextQuestID`='43897' WHERE (`ID`='43896');
UPDATE `quest_template_addon` SET `PrevQuestID`='43896' WHERE (`ID`='43897');*/

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('19', '0', '43896', '0', '0', '8', '0', '43895', '0', '0', '0', '0', '', 'true if player reward quest'),
('19', '0', '43897', '0', '0', '8', '0', '43896', '0', '0', '0', '0', '', 'true if player reward quest'),
('19', '0', '43894', '0', '0', '8', '0', '43893', '0', '0', '0', '0', '', 'true if player reward quest'),
('19', '0', '43893', '0', '0', '8', '0', '43892', '0', '0', '0', '0', '', 'true if player reward quest'),
('19', '0', '47865', '0', '0', '8', '0', '47864', '0', '0', '0', '0', '', 'true if player reward quest'),
('19', '0', '47864', '0', '0', '8', '0', '47851', '0', '0', '0', '0', '', 'true if player reward quest');

UPDATE `quest_template` SET `FactionCapIn3`='7', `FactionCapIn2`='7', `FactionCapIn1`='7', `FactionCapIn4`='7', `FactionCapIn5`='7' WHERE ID in (43892,43893);
UPDATE quest_template SET /*`QuestType`='2',*/ `QuestMaxScalingLevel`='-1', `Flags`='32768', `FlagsEx`='32768', `Expansion`='6' WHERE id in (47851,47864,47865,43892,43893,43894);
UPDATE quest_template SET /*`QuestType`='2',*/ `QuestMaxScalingLevel`='-1', `Flags`='33587200', `FlagsEx`='32768', `Expansion`='6' WHERE id in (43895,43896,43897);

DELETE FROM creature_queststarter WHERE quest in (37458,37459,36057,37457,37456,36056,37453,37452,36055);
DELETE FROM creature_questender WHERE quest in (37458,37459,36057,37457,37456,36056,37453,37452,36055);