UPDATE `world_quest_template` SET `Min`='1', `AllMax`='11' WHERE (`QuestInfoID`='112') AND (`ZoneID`='0');
UPDATE `world_quest_template` SET `Min`='1', `Max`='1', `AllMax`='4' WHERE (`QuestInfoID`='144') AND (`ZoneID`='0');
UPDATE `world_quest_template` SET `Min`='1', `Max`='1' WHERE (`QuestInfoID`='150') AND (`ZoneID`='0');
UPDATE `quest_template` SET `AreaGroupID`='4816' WHERE (`ID`='46947');
UPDATE `quest_template` SET `AreaGroupID`='4816' WHERE (`ID`='46948');
UPDATE `quest_template` SET `QuestSortID`='7334', `AreaGroupID`='4771' WHERE (`ID`='43192');
UPDATE `quest_template` SET `AreaGroupID`='4893' WHERE (`ID`='43193');
UPDATE `quest_template` SET `AreaGroupID`='4442' WHERE (`ID`='43985');
UPDATE `quest_template` SET `AreaGroupID`='4613' WHERE (`ID`='43448');
UPDATE `quest_template` SET `AreaGroupID`='8147' WHERE (`ID`='44287');

UPDATE `quest_template` SET `QuestInfoID`='136' WHERE (`ID`='41816');

DELETE FROM worldstate_template WHERE VariableID IN (12368,13306);
INSERT INTO `worldstate_template` (`VariableID`, `Type`, `ConditionID`, `Flags`, `DefaultValue`, `LinkedID`, `Comment`) VALUES
('12368', '1', '1220', '65536', '1', '0', 'Enable WQ World Bosses'),
('13306', '1', '1220', '65536', '0', '0', 'Enable WQ World Bosses Legionfall');

DELETE FROM world_quest_update WHERE QuestID IN (43512,42819,42779,43985,43448,43193,44287,43192,43513,42270,42269,46948,46947,46945,47061);
INSERT INTO `world_quest_update` (`QuestID`, `Timer`, `VariableID`, `VariableID1`, `Value`, `Value1`, `AreaID`, `EventID`, `VerifiedBuild`) VALUES
('43512', '604800', '12249', '0', '1', '0', '', '224', '24015'), -- Ana-Mouz
('42819', '604800', '12007', '0', '1', '0', '', '206', '22522'), -- Humongris
('42779', '604800', '11973', '0', '1', '0', '', '222', '21737'), -- Shar\'thos
('43985', '604800', '12389', '0', '1', '0', '', '214', '22290'), -- Flotsam
('43448', '604800', '12210', '0', '1', '0', '', '223', '21570'), -- Drugon the Frostblood
('43193', '604800', '11979', '0', '1', '0', '', '208', '22124'), -- Calamir
('44287', '604800', '12418', '0', '1', '0', '', '221', '22260'), -- Withered J'im
('43192', '604800', '11978', '0', '1', '0', '', '215', '22101'), -- Levantus
('43513', '604800', '12250', '0', '1', '0', '', '216', '23171'), -- Na'zak the Fiend
('42270', '604800', '11683', '0', '1', '0', '', '213', '21796'), -- Nithogg
('42269', '604800', '11682', '0', '1', '0', '', '212', '22594'), -- The Soultakers
('46945', '604800', '12963', '0', '1', '0', '', '210', '23937'),
('46947', '604800', '12938', '0', '1', '0', '', '217', '24015'),
('46948', '604800', '12939', '0', '1', '0', '', '225', '23877'),
('47061', '604800', '13427', '0', '1', '0', '', '211', '23937');

DELETE FROM world_quest_update WHERE QuestID IN (49169,49171,49166,49167,49168,49170);
INSERT INTO `world_quest_update` (`QuestID`, `Timer`, `VariableID`, `VariableID1`, `Value`, `Value1`, `AreaID`, `EventID`, `VerifiedBuild`) VALUES
('49169', '604800', '14252', '0', '1', '0', '', '226', '26124'), -- folnuna
('49171', '604800', '14253', '0', '1', '0', '', '227', '26124'), -- sotanator
('49166', '604800', '14248', '0', '1', '0', '', '229', '26124'), -- meto
('49167', '604800', '14249', '0', '1', '0', '', '231', '26124'), -- verolom
('49168', '604800', '14251', '0', '1', '0', '', '228', '26124'), -- alluradel
('49170', '604800', '14250', '0', '1', '0', '', '230', '26124'); -- occularus