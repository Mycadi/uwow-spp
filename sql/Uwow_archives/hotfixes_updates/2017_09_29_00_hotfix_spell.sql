INSERT INTO `spell_class_options` (`ID`, `SpellID`, `SpellClassMask2`, `SpellClassSet`, `VerifiedBuild`) VALUES ('29428', '243073', '262144', '11', '24015');
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`) VALUES ('2', '680438657', '29428');
UPDATE `spell_class_options` SET `SpellClassSet` = '11' , `ModalNextSpell` = '0' WHERE `ID` = '29428';
