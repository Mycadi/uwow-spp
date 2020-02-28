INSERT INTO `spell` (`ID`, `Name`, `SpellMiscDifficultyID`) VALUES ('17940', 'Agony Soul Shard Driver', '230004');

INSERT INTO `spell_misc` (`ID`, `Attributes1`, `Attributes2`, `Attributes3`, `Attributes4`, `Attributes5`, `Attributes6`, `Attributes7`, `CastingTimeIndex`, `DurationIndex`, `IconFileDataID`) VALUES ('230004', '763363584', '168', '540677', '269484032', '4', '393224', '4096', '1', '21', '136243');

INSERT INTO `spell_effect` (`ID`, `SpellID`, `Effect`, `EffectAura`, `ImplicitTarget1`) VALUES ('317954', '17940', '6', '4', '1');
INSERT INTO `spell_effect` (`ID`, `SpellID`, `Effect`, `EffectAura`, `EffectIndex`, `ImplicitTarget1`) VALUES ('317955', '17940', '6', '4', '1', '1');

INSERT INTO `spell_misc_difficulty` (`ID`, `SpellID`) VALUES ('230004', '17940');

UPDATE `spell_effect` SET `EffectBasePoints`='1' WHERE (`ID`='317954');
UPDATE `spell_effect` SET `EffectBasePoints`='0' WHERE (`ID`='317954');