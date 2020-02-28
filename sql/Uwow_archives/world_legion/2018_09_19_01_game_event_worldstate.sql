TRUNCATE `worldstate_template`;

ALTER TABLE `worldstate_template`   
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`VariableID`);

REPLACE INTO `worldstate_template` (`VariableID`, `Type`, `ConditionID`, `Flags`, `Comment`) VALUES
('2259', '1', '0', '65536', 'unk'),
('2260', '1', '0', '65536', 'unk'),
('2261', '1', '0', '65536', 'unk'),
('2262', '1', '0', '65536', 'unk'),
('2263', '1', '0', '65536', 'unk'),
('2264', '1', '0', '65536', 'unk'),
('6078', '3', '0', '65536', 'Darkmoon Festival'),
('13107', '3', '0', '65536', 'Spring Balloon Festival'),
('13062', '3', '0', '65536', 'Spring Balloon Festival'),
('13321', '1', '1220', '65536', 'The Sentinax');

REPLACE INTO `game_event_worldstate` (`eventEntry`, `WorldStateID`, `Type`, `TypeID`, `Value`) VALUES 
('75', '6078', '3', '0', '1'),
('87', '13062', '3', '0', '1'),
('301', '13107', '3', '0', '1'),
('117', '13321', '1', '1220', '1'),
('118', '13321', '1', '1220', '2'),
('119', '13321', '1', '1220', '3'),
('120', '13321', '1', '1220', '4'),
('121', '13321', '1', '1220', '5'),
('122', '13321', '1', '1220', '6'),
('123', '13321', '1', '1220', '7'),
('124', '13321', '1', '1220', '8'),
('125', '13321', '1', '1220', '9');
