DELETE FROM `spell_aura_options` WHERE `ID` = '20517'; 
INSERT INTO `spell_aura_options` (`ID`, `SpellID`, `ProcCharges`, `ProcTypeMask`, `CumulativeAura`, `ProcChance`, `VerifiedBuild`) VALUES ('20517', '202425', '3', '65536', '0', '100', '23911'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20517' AND `TableHash` = '4096770149' AND `RecordID` = '20517' AND `Timestamp` = '0'; 
INSERT INTO `hotfix_data` VALUES ('20517', '4096770149', '20517', '0', '0');

DELETE FROM `spell_shapeshift` WHERE `SpellID` = '2006'; 
DELETE FROM `spell_shapeshift` WHERE `SpellID` = '213634'; 
INSERT INTO `spell_shapeshift` (`ID`, `SpellID`, `ShapeshiftExclude1`, `ShapeshiftMask1`) VALUES 
('45', '2006', '0', '0'),
('4756', '213634', '0', '2147483648'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20518' AND `TableHash` = '3163679255' AND `RecordID` = '4756'; 
DELETE FROM `hotfix_data` WHERE `Id` = '20519' AND `TableHash` = '3163679255' AND `RecordID` = '45'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES 
('20518', '3163679255', '4756'), 
('20519', '3163679255', '45');

DELETE FROM `spell` WHERE `ID` = '17940'; 
INSERT INTO `spell` (`ID`, `Name`) VALUES ('17940', 'Agony Soul Shard Driver');
DELETE FROM `spell_misc` WHERE `ID` = '500003'; 
INSERT INTO `spell_misc` (`ID`, `Attributes1`, `Attributes2`, `Attributes3`, `Attributes4`, `Attributes5`, `Attributes6`, `Attributes7`, `CastingTimeIndex`, `DurationIndex`, `ActiveIconFileDataID`, `SpellIconFileDataID`, `SpellID`) VALUES 
('500003', '763363584', '168', '540677', '269484032', '4', '393224', '4096', '1', '21', '136243', '136243' , '17940');
DELETE FROM `spell_effect` WHERE `ID` = '6'; 
DELETE FROM `spell_effect` WHERE `ID` = '7'; 
INSERT INTO `spell_effect` (`ID`, `SpellID`, `Effect`, `EffectAura`, `ImplicitTarget1`) VALUES ('6', '17940', '6', '4', '1');
INSERT INTO `spell_effect` (`ID`, `SpellID`, `Effect`, `EffectAura`, `EffectIndex`, `ImplicitTarget1`) VALUES ('7', '17940', '6', '4', '1', '1');
UPDATE `spell_effect` SET `EffectBasePoints`='1' WHERE (`ID`='6');
UPDATE `spell_effect` SET `EffectBasePoints`='0' WHERE (`ID`='6');

DELETE FROM `spell` WHERE `ID` = '62388'; 
INSERT INTO `spell` (`ID`, `Name`) VALUES ('62388', 'Teleport UNLOCK');
DELETE FROM `spell_effect` WHERE `ID` = '9'; 
INSERT INTO `spell_effect` (`ID`, `SpellID`, `Effect`, `EffectAura`, `ImplicitTarget1`) VALUES ('9', '62388', '6', '4', '1');
DELETE FROM `spell_misc` WHERE `ID` = '500004'; 
INSERT INTO `spell_misc` (`ID`, `Attributes1`, `Attributes3`, `Attributes4`, `Attributes14`, `CastingTimeIndex`, `DurationIndex`, `ActiveIconFileDataID`, `SpellIconFileDataID`, `SpellID`) VALUES 
('500004', '536871296', '4', '196608', '1', '1', '21', '136243', '136243', '62388');

DELETE FROM `spell_effect` WHERE `ID` = '299412'; 
DELETE FROM `spell_effect` WHERE `ID` = '299449'; 
INSERT INTO `spell_effect` (`ID`, `Effect`, `EffectBasePoints`, `EffectIndex`, `EffectAura`, `EffectChainAmplitude`, `PvpMultiplier`, `GroupSizeBasePointsCoefficient`, `EffectMiscValue1`, `ImplicitTarget1`, `SpellID`) VALUES 
('299412', '6', '3', '0', '31', '1', '1', '1', '0', '1', '203059'),
('299449', '6', '3', '1', '79', '1', '1', '1', '127', '1', '203059'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20520' AND `TableHash` = '4030871717' AND `RecordID` = '299412' AND `Timestamp` = '0';
DELETE FROM `hotfix_data` WHERE `Id` = '20521' AND `TableHash` = '4030871717' AND `RecordID` = '299449' AND `Timestamp` = '0';
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES 
('20520', '4030871717', '299412'),
('20521', '4030871717', '299449');

DELETE FROM `spell_categories` WHERE `ID` = '51114'; 
INSERT INTO `spell_categories` (`ID`, `StartRecoveryCategory`, `DefenseType`, `PreventionType`, `SpellID`) VALUES ('51114', '133', '1', '1', '199360'); 
DELETE FROM `spell_cooldowns` WHERE `ID` = '22915'; 
INSERT INTO `spell_cooldowns` (`ID`, `SpellID`) VALUES ('22915', '199360'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20522' AND `TableHash` = '3689412649' AND `RecordID` = '51114'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20522', '3689412649', '51114'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20523' AND `TableHash` = '4193483863' AND `RecordID` = '22915'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20523', '4193483863', '22915'); 

DELETE FROM `spell_aura_options` WHERE `ID` = '25689'; 
INSERT INTO `spell_aura_options` (`ID`, `ProcCharges`, `ProcTypeMask`, `ProcChance`, `SpellID`, `VerifiedBuild`) VALUES ('25689', '6', '327680', '100', '256836', '1'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20524' AND `TableHash` = '4096770149' AND `RecordID` = '25689' AND `Timestamp` = '0'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20524', '4096770149', '25689'); 

DELETE FROM `spell_aura_options` WHERE `ID` = '25765';
DELETE FROM `spell_aura_options` WHERE `ID` = '25766';
DELETE FROM `spell_aura_options` WHERE `ID` = '25767';
DELETE FROM `spell_aura_options` WHERE `ID` = '25768';
DELETE FROM `spell_aura_options` WHERE `ID` = '25769';
DELETE FROM `spell_aura_options` WHERE `ID` = '25770'; 
INSERT INTO `spell_aura_options` (`ID`, `ProcCharges`, `ProcTypeMask`, `ProcCategoryRecovery`, `ProcChance`, `SpellID`, `VerifiedBuild`) VALUES 
('25765', '4', '16384', '500', '100', '257470', '1'),
('25766', '4', '16384', '500', '100', '257471', '1'),
('25767', '4', '16384', '500', '100', '257472', '1'),
('25768', '4', '16384', '500', '100', '257473', '1'),
('25769', '4', '16384', '500', '100', '257474', '1'),
('25770', '4', '16384', '500', '100', '257475', '1');
DELETE FROM `hotfix_data` WHERE `Id` = '20525' AND `TableHash` = '4096770149' AND `RecordID` = '25765';
DELETE FROM `hotfix_data` WHERE `Id` = '20526' AND `TableHash` = '4096770149' AND `RecordID` = '25766'; 
DELETE FROM `hotfix_data` WHERE `Id` = '20527' AND `TableHash` = '4096770149' AND `RecordID` = '25767'; 
DELETE FROM `hotfix_data` WHERE `Id` = '20528' AND `TableHash` = '4096770149' AND `RecordID` = '25768'; 
DELETE FROM `hotfix_data` WHERE `Id` = '20529' AND `TableHash` = '4096770149' AND `RecordID` = '25769'; 
DELETE FROM `hotfix_data` WHERE `Id` = '20530' AND `TableHash` = '4096770149' AND `RecordID` = '25770';  
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES 
('20525', '4096770149', '25765'), 
('20526', '4096770149', '25766'),
('20527', '4096770149', '25767'),
('20528', '4096770149', '25768'),
('20529', '4096770149', '25769'),
('20530', '4096770149', '25770');

DELETE FROM `spell_aura_options` WHERE `ID` = '22971'; 
INSERT INTO `spell_aura_options` (`ID`, `ProcCharges`, `ProcTypeMask`, `CumulativeAura`, `ProcChance`, `SpellID`, `VerifiedBuild`) VALUES ('22971', '1', 1024+4096+16384+65536, '1', '100', '69369', '1'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20531' AND `TableHash` = '4096770149' AND `RecordID` = '22971'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20531', '4096770149', '22971');

DELETE FROM `spell_aura_options` WHERE `ID` = '12458'; 
INSERT INTO `spell_aura_options` (`ID`, `ProcCharges`, `ProcTypeMask`, `CumulativeAura`, `ProcChance`, `SpellID`, `VerifiedBuild`) VALUES 
('12458', '1', 16384, '2', '100', '114255', '1'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20532' AND `TableHash` = '4096770149' AND `RecordID` = '12458'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20532', '4096770149', '12458');

DELETE FROM `spell_effect` WHERE `ID` = '321944'; 
DELETE FROM `spell_effect` WHERE `ID` = '321952'; 
INSERT INTO `spell_effect` (`ID`, `Effect`, `EffectBasePoints`, `EffectIndex`, `EffectAura`, `EffectChainAmplitude`, `PvpMultiplier`, `GroupSizeBasePointsCoefficient`, `EffectSpellClassMask1`, `EffectSpellClassMask2`, `ImplicitTarget1`, `SpellID`) VALUES 
('321944', '6', '30', '5', '143', '1', '1', '1', '8388608', '32768', '1', '216331'), 
('321952', '6', '30', '7', '173', '1', '1', '1', '8388608', '32768', '1', '216331');
DELETE FROM `hotfix_data` WHERE `Id` = '20533' AND `TableHash` = '4030871717' AND `RecordID` = '321944' AND `Timestamp` = '0'; 
DELETE FROM `hotfix_data` WHERE `Id` = '20534' AND `TableHash` = '4030871717' AND `RecordID` = '321952' AND `Timestamp` = '0'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20533', '4030871717', '321944'); 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20534', '4030871717', '321952'); 

DELETE FROM `spell_aura_options` WHERE `ID` = '22664'; 
INSERT INTO `spell_aura_options` (`ID`, `ProcCharges`, `ProcTypeMask`, `ProcCategoryRecovery`, `CumulativeAura`, `ProcChance`, `SpellID`, `VerifiedBuild`) VALUES 
('22664', '10', 0x00051000, '500', '0', '100', '222046', '1'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20535' AND `TableHash` = '4096770149' AND `RecordID` = '22664'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20535', '4096770149', '22664');

DELETE FROM `spell_cooldowns` WHERE `ID` = '27169'; 
INSERT INTO `spell_cooldowns` (`ID`, `RecoveryTime`, `StartRecoveryTime`, `SpellID`, `VerifiedBuild`) VALUES ('27169', '15000', '1500', '235963', '25976'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20536' AND `RecordID` = '27169'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20536', '4193483863', '27169');

DELETE FROM `spell_effect` WHERE `ID` = '288648'; 
INSERT INTO `spell_effect` (`ID`, `Effect`, `EffectBasePoints`, `EffectIndex`, `EffectAura`, `EffectChainAmplitude`, `PvpMultiplier`, `GroupSizeBasePointsCoefficient`, `EffectSpellClassMask3`, `EffectMiscValue1`, `ImplicitTarget1`, `SpellID`) VALUES 
('288648', '6', '-120000', '0', '107', '0', '1', '1', '2048', '11', '1', '196602');
DELETE FROM `hotfix_data` WHERE `Id` = '20537' AND `TableHash` = '4030871717' AND `RecordID` = '288648';
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20537', '4030871717', '288648');

DELETE FROM `spell_effect` WHERE `ID` = '293472'; 
DELETE FROM `spell_effect` WHERE `ID` = '293473'; 
INSERT INTO `spell_effect` (`ID`, `Effect`, `EffectBasePoints`, `EffectIndex`, `EffectChainAmplitude`, `PvpMultiplier`, `GroupSizeBasePointsCoefficient`, `EffectMiscValue1`, `ImplicitTarget1`, `SpellID`, `VerifiedBuild`) VALUES 
('293472', '38', '1', '0', '1', '1', '1', '4', '21', '199427', '25976'), 
('293473', '38', '1', '1', '1', '1', '1', '3', '21', '199427', '25976');
DELETE FROM `spell` WHERE `ID` = '199424';
INSERT INTO `spell` (`ID`, `Name`, `NameSubtext`, `Description`, `AuraDescription` , `VerifiedBuild`) VALUES 
('199424', 'Pure Heart', 'Passive', 'Whenever you or allies within $m1 yards are healed from any source, they are cleansed of 1 Disease and Poison effects.', 'Whenever you or allies within $m1 yards are healed from any source, they are cleansed of 1 Disease and Poison effects.', '25976'); 
DELETE FROM `spell_locale` WHERE `ID` = '199424' AND `locale` = 'ruRU'; 
INSERT INTO `spell_locale` (`ID`, `locale`, `Name_lang`, `NameSubtext_lang`, `Description_lang`, `AuraDescription_lang`, `VerifiedBuild`) VALUES 
('199424', 'ruRU', 'Чистое сердце', 'Пассивная', 'Исцеление вас и ваших союзников в радиусе $m1 м также рассеивает 1 эффект болезни или яда.', 'Исцеление вас и ваших союзников в радиусе $m1 м также рассеивает 1 эффект болезни или яда.', '25976'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20538' AND `TableHash` = '3776013982' AND `RecordID` = '199424';
DELETE FROM `hotfix_data` WHERE `Id` = '20538' AND `TableHash` = '4030871717' AND `RecordID` = '293472'; 
DELETE FROM `hotfix_data` WHERE `Id` = '20538' AND `TableHash` = '4030871717' AND `RecordID` = '293473'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20538', '3776013982', '199424');
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20538', '4030871717', '293472');
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20538', '4030871717', '293473');

DELETE FROM `spell_effect` WHERE `ID` = '344184'; 
DELETE FROM `spell_effect` WHERE `ID` = '344185';
INSERT INTO `spell_effect` (`ID`, `Effect`, `EffectBasePoints`, `EffectIndex`, `EffectAura`, `EffectChainAmplitude`, `PvpMultiplier`, `GroupSizeBasePointsCoefficient`, `EffectMiscValue1`, `EffectMiscValue2`, `ImplicitTarget1`, `SpellID`) VALUES 
('344184', '6', '5', '19', '403', '1', '1', '1', '237867', '237868', '1', '219713'), 
('344185', '6', '5', '20', '403', '1', '1', '1', '237867', '237869', '1', '219744');
DELETE FROM `hotfix_data` WHERE `Id` = '20539' AND `TableHash` = '4030871717'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20539', '4030871717', '344184');
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20539', '4030871717', '344185');

DELETE FROM `spell_effect` WHERE `ID` = '279992';
DELETE FROM `spell_effect` WHERE `ID` = '279997';
DELETE FROM `spell_effect` WHERE `ID` = '279996';
INSERT INTO `spell_effect` (`ID`, `Effect`, `EffectBasePoints`, `EffectIndex`, `EffectChainAmplitude`, `PvpMultiplier`, `GroupSizeBasePointsCoefficient`, `ImplicitTarget1`, `SpellID`) VALUES 
('279992', '121', '0', '0', '1', '0.7', '1', '6', '190928'), 
('279997', '31', '300', '1', '1', '0.7', '1', '6', '190928');
INSERT INTO `spell_effect` (`ID`, `Effect`, `EffectBasePoints`, `EffectAura`, `EffectChainAmplitude`, `PvpMultiplier`, `GroupSizeBasePointsCoefficient`, `EffectSpellClassMask4`, `ImplicitTarget1`, `SpellID`) VALUES 
('279996', '6', '50', '108', '1', '0.7', '1', 1, '1', '190931'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20540' AND `TableHash` = '4030871717';
DELETE FROM `hotfix_data` WHERE `Id` = '20541' AND `TableHash` = '4030871717';
DELETE FROM `hotfix_data` WHERE `Id` = '20542' AND `TableHash` = '4030871717';
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20542', '4030871717', '279996');
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20540', '4030871717', '279992');
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20541', '4030871717', '279997');

DELETE FROM `spell_effect` WHERE `ID` = '111174';
INSERT INTO `spell_effect` (`ID`, `Effect`, `EffectBasePoints`, `EffectChainAmplitude`, `PvpMultiplier`, `GroupSizeBasePointsCoefficient`, `EffectMiscValue1`, `ImplicitTarget1`, `SpellID`) VALUES 
('111174', '138', '100', '1', '1', '1', '200', '1', '102417'); 
DELETE FROM `hotfix_data` WHERE `Id` = '20543' AND `TableHash` = '4030871717'; 
INSERT INTO `hotfix_data` (`Id`, `TableHash`, `RecordID`) VALUES ('20543', '4030871717', '111174');
