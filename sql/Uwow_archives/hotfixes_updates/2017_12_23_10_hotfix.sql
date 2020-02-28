INSERT INTO `spell_cooldowns` (`ID`, `SpellID`, `CategoryRecoveryTime`, `StartRecoveryTime`) VALUES ('27179', '236077', '45000', '1500');
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`) VALUES ('2000', '4193483863', '27179');

INSERT INTO `spell_misc` (`ID`, `Attributes1`, `Attributes2`, `Attributes5`, `Attributes7`, `Attributes14`, `CastingTimeIndex`, `DurationIndex`, `RangeIndex`, `SchoolMask`, `IconFileDataID`) VALUES ('209978', '327696', '134218240', '536872960', '10485760', '1', '1', '35', '2', '1', '132343');
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`) VALUES ('2001', '3322146344', '209978');

INSERT INTO `spell_cooldowns` (`ID`, `SpellID`, `RecoveryTime`) VALUES ('27200', '236273', '60000');
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`) VALUES ('2002', '4193483863', '27200');

INSERT INTO `spell_misc` (`ID`, `Attributes6`, `Attributes9`, `Attributes10`, `Attributes14`, `CastingTimeIndex`, `DurationIndex`, `RangeIndex`, `SchoolMask`, `IconFileDataID`) VALUES ('210172', '134217728', '4096', '4194304', '1', '1', '32', '3', '1', '1455893');
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`) VALUES ('2003', '3322146344', '210172');

DELETE FROM `spell_aura_restrictions` WHERE (`ID`='153');
DELETE FROM `hotfix_data` WHERE (`TableHash`='3130494798') AND (`RecordId`='153') AND (`Deleted`='0');

INSERT INTO `spell` (`ID`, `Name`, `SpellMiscDifficultyID`) VALUES ('62388', 'Teleport UNLOCK', '230002');
INSERT INTO `spell_effect` (`ID`, `SpellID`, `Effect`, `EffectAura`, `ImplicitTarget1`) VALUES ('317952', '62388', '6', '4', '1');
INSERT INTO `spell_misc` (`ID`, `Attributes1`, `Attributes3`, `Attributes4`, `Attributes14`, `CastingTimeIndex`, `DurationIndex`, `IconFileDataID`) VALUES ('230002', '536871296', '4', '196608', '1', '1', '21', '136243');
INSERT INTO `spell_misc_difficulty` (`ID`, `SpellID`) VALUES ('230002', '62388');


