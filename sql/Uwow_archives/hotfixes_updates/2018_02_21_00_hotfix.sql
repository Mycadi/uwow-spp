INSERT INTO `artifact_power_rank` (`ID`, `SpellID`, `Value`, `ArtifactPowerID`, `Rank`) VALUES 
('6685', '238059', '-5000', '1549', '0'), 
('7464', '238059', '-10000', '1549', '1'),
('7465', '238059', '-15000', '1549', '2'),
('7466', '238059', '-20000', '1549', '3'),
('7467', '238059', '-25000', '1549', '4'),
('7468', '238059', '-30000', '1549', '5'),
('7469', '238059', '-35000', '1549', '6'),
('7470', '238059', '-40000', '1549', '7');
INSERT INTO `hotfix_data` VALUES 
('1820', '367248955', '6685', '0'),
('1821', '367248955', '7464', '0'),
('1822', '367248955', '7465', '0'),
('1823', '367248955', '7466', '0'),
('1824', '367248955', '7467', '0'),
('1825', '367248955', '7468', '0'),
('1826', '367248955', '7469', '0'),
('1827', '367248955', '7470', '0');

INSERT INTO `hotfix_data` VALUES ('1828', '4096770149', '24381', '0');

INSERT INTO `hotfix_data` VALUES ('1829', '4096770149', '24379', '0');
UPDATE `spell_aura_options` SET `ProcChance` = '20' WHERE `ID` = '24379' AND `SpellID` = '238125'; 

INSERT INTO `spell_aura_options` (`ID`, `SpellID`, `CumulativeAura`, `ProcChance`, `VerifiedBuild`) VALUES ('21282', '209388', '0', '101', '23911'); 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`) VALUES ('1830', '4096770149', '21282'); 

INSERT INTO `spell_aura_options` (`ID`, `SpellID`, `ProcCharges`, `ProcTypeMask`, `CumulativeAura`, `ProcChance`, `VerifiedBuild`) VALUES ('22841', '194594', '2', '256', '0', '101', '23911'); 
INSERT INTO `hotfix_data` VALUES ('1831', '4096770149', '22841', '0');

INSERT INTO `spell_aura_options` (`ID`, `SpellID`, `ProcCharges`, `ProcTypeMask`, `CumulativeAura`, `ProcChance`, `VerifiedBuild`) VALUES ('20517', '202425', '3', '65536', '0', '100', '23911'); 
INSERT INTO `hotfix_data` VALUES ('1832', '4096770149', '20517', '0');


INSERT INTO `spell_category` (`ID`, `Name`, `ChargeRecoveryTime`, `MaxCharges`, `ChargeCategoryType`) VALUES ('1652', '7.0 Artifacts - Frost Death Knight - Sindragosa\'s Fury', '300000', '1', '1'); 
INSERT INTO `spell_cooldowns` (`ID`, `SpellID`) VALUES ('23671', '190778'); 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`) VALUES ('1833', '3502494094', '1652'); 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`) VALUES ('1833', '4193483863', '23671');

INSERT INTO `spell_misc` (`ID`, `Attributes1`, `Attributes14`, `CastingTimeIndex`, `RangeIndex`, `SchoolMask`, `IconFileDataID`, `VerifiedBuild`) VALUES 
('188836', '65536', '1', '5', '5', '8', '136048', '1'), 
('188837', '65536', '1', '5', '5', '8', '136048', '1'); 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`) VALUES ('1834', '3322146344', '188836'), ('1835', '3322146344', '188837'); 

INSERT INTO `spell_effect` (`EffectSpellClassMask2`, `ID`, `SpellID`, `Effect`, `EffectAura`, `EffectBasePoints`, `EffectMiscValue`, `ImplicitTarget1`) VALUES ('16384', '356071', '235605', '6', '454', '-50', '1652', '1');  
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`) VALUES ('1836', '4030871717', '356071');