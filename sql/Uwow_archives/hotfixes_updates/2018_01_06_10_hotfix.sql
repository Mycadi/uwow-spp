INSERT INTO `spell` (`ID`, `Name`, `SpellMiscDifficultyID`) VALUES ('158950', 'Level of Craven', '230003');
INSERT INTO `spell_effect` (`ID`, `SpellID`, `Effect`, `EffectAura`, `ImplicitTarget1`) VALUES ('317953', '158950', '6', '4', '1');
INSERT INTO `spell_misc` (`ID`, `Attributes1`, `Attributes2`, `Attributes3`, `Attributes4`, `Attributes5`, `Attributes6`, `Attributes7`, `CastingTimeIndex`, `DurationIndex`, `IconFileDataID`) VALUES ('230003', '763363584', '168', '540677', '269484032', '4', '393224', '4096', '1', '42', '136243');
INSERT INTO `spell_misc_difficulty` (`ID`, `SpellID`) VALUES ('230003', '158950');
UPDATE `spell_effect` SET `EffectBasePoints`='1' WHERE (`ID`='317953');