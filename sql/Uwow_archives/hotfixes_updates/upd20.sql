DELETE FROM `item` WHERE ID IN (8164, 9311, 18154, 22058);
INSERT INTO `item` (`ID`,`Class`,`SubClass`,`SoundOverrideSubclass`,`Material`,`InventoryType`,`Sheath`,`FileDataID`,`GroupSoundsID`,`VerifiedBuild`)  VALUES
('22058', '15', '3', '-1', '0', '0', '0', '135453', '20', '21021'),
('18154', '0', '8', '-1', '0', '0', '0', '135724', '20', '21021'),
('9311', '0', '8', '-1', '0', '0', '0', '134327', '20', '21021'),
('8164', '0', '8', '-1', '0', '0', '0', '134937', '0', '21021');

DELETE FROM `item_sparse` WHERE ID IN (8164, 9311, 18154, 22058);
INSERT INTO `item_sparse`(`ID`,`Quality`,`Flags`,`UnkFloat1`,`UnkFloat2`,`BuyCount`,`BuyPrice`,`SellPrice`,`InventoryType`,`AllowableClass`,`AllowableRace`,`ItemLevel`,`RequiredLevel`,`RequiredSkill`,`RequiredSkillRank`,`RequiredSpell`,`RequiredHonorRank`,`RequiredCityRank`,`RequiredReputationFaction`,`RequiredReputationRank`,`MaxCount`,`Stackable`,`ContainerSlots`,`ItemStatType`,`ItemStatValue`,`ItemStatAllocation`,`ItemStatSocketCostMultiplier`,`ScalingStatDistribution`,`DamageType`,`Delay`,`RangedModRange`,`Bonding`,`Name`,`Name2`,`Name3`,`Name4`,`Description`,`PageText`,`LanguageID`,`PageMaterial`,`StartQuest`,`LockID`,`Material`,`Sheath`,`RandomProperty`,`RandomSuffix`,`ItemSet`,`Area`,`Map`,`BagFamily`,`TotemCategory`,`SocketColor`,`SocketBonus`,`GemProperties`,`ArmorDamageModifier`,`Duration`,`ItemLimitCategory`,`HolidayID`,`StatScalingFactor`,`CurrencySubstitutionID`,`CurrencySubstitutionCount`,`ItemNameDescriptionID`,`VerifiedBuild`) VALUES
( '8164','1','0','1.036','0','1','10','2','0','-1','-1','1','0','0','0','0','0','0','0','0','0','10','0','0','0','0','0','0','0','0','0','0','Test Stationery',NULL,NULL,NULL,NULL,'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','21021'),
( '9311','1','0','0.9512','1','1','0','0','0','-1','-1','1','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','Default Stationery',NULL,NULL,NULL,NULL,'0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','21021'),
( '18154','1','0','1.0234','1','1','0','0','0','-1','-1','1','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','Blizzard Stationery',NULL,NULL,NULL,NULL,'0','0','6','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','21021'),
( '22058','1','0','1.036','0','1','1','0','0','-1','-1','1','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','Valentine\'s Day Stationery',NULL,NULL,NULL,NULL,'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','21021');

DELETE FROM `item_sparse_locale` WHERE ID IN (8164, 9311, 18154, 22058);
INSERT INTO `item_sparse_locale`(`ID`,`locale`,`Name_lang`,`Name2_lang`,`Name3_lang`,`Name4_lang`,`Description_lang`,`VerifiedBuild`) VALUES
( '8164','ruRU','Тест - письменные принадлежности',NULL,NULL,NULL,NULL,'21021'),
( '9311','ruRU','Обычные письменные принадлежности',NULL,NULL,NULL,NULL,'21021'),
( '18154','ruRU','Письменные принадлежности Близзарда',NULL,NULL,NULL,NULL,'21021'),
( '22058','ruRU','Портрет ко дню Святого Валентина',NULL,NULL,NULL,NULL,'21021');

DELETE FROM `hotfix_data` WHERE RecordID IN (8164, 9311, 18154, 22058);
INSERT INTO `hotfix_data` VALUES
(1344507586, 8164, 1433302494, 0),
(1344507586, 9311, 1433302494, 0),
(1344507586, 18154, 1433302494, 0),
(1344507586, 22058, 1433302494, 0),
(2442913102, 8164, 1433302494, 0),
(2442913102, 9311, 1433302494, 0),
(2442913102, 18154, 1433302494, 0),
(2442913102, 22058, 1433302494, 0);

