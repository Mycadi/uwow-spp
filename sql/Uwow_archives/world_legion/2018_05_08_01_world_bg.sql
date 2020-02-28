
--- hotfixes
REPLACE INTO `battlemaster_list` VALUES ('894', 'Бурлящий берег', null, null, null, '1864730', '1803', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '3', '0', '1', '110', '110', '10', '10', '10', '24', '23911');
REPLACE INTO `hotfix_data` (`Id`, `TableHash`, `RecordId`, `Deleted`) VALUES ('159998', '1435332686', '894', '0');
--- hotfixes end
 
REPLACE INTO `battleground_template` VALUES ('894', '6337', '6380', '3', '', '5', 'Seething shore');

INSERT IGNORE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `unkInt32`, `VerifiedBuild`) VALUES
(272471, 42, 47686, 'Азерит', 'mine', '', '', 1.1, 0, 0, 0, 0, 0, 0, 60000, 1, 1, 2825, 134113, 0, 0, 134114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68590, 0, 0, 0, 0, 2405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26365), -- Азерит
(281307, 42, 47685, 'Азерит', 'mine', '', '', 1.1, 0, 0, 0, 0, 0, 0, 60000, 1, 1, 2825, 134113, 0, 0, 134114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68590, 0, 0, 0, 0, 2405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26365), -- Азерит
(281224, 0, 47611, 'Alliance Airship Prep Collision', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26365), -- Alliance Airship Prep Collision
(278775, 5, 35910, 'Знамя Альянса', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26365), -- Знамя Альянса
(279254, 15, 9001, 'Вестник войны', '', '', '', 1, 0, 0, 0, 0, 0, 0, 6520, 4, 1, 0, 0, 0, 1857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26365), -- Вестник войны
(278407, 15, 9002, 'Клинок Рассвета', '', '', '', 1, 0, 0, 0, 0, 0, 0, 6519, 4, 1, 0, 0, 0, 1856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26365); -- Клинок Рассвета

UPDATE `gameobject_template` SET `type`=6, `displayId`=5991, `name`='Эффект еды', `Data2`=6, `Data3`=23493, `Data4`=1, `Data5`=3, `Data6`=0, `VerifiedBuild`=26365 WHERE `entry`=206565; -- 0
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=6, `Data3`=23451, `Data4`=1, `Data5`=3, `Data6`=0, `VerifiedBuild`=26365 WHERE `entry`=206566; -- 0
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=6, `Data3`=23505, `Data4`=1, `Data5`=3, `Data6`=0, `Data10`=1, `VerifiedBuild`=26365 WHERE `entry`=206564; -- 0
UPDATE `gameobject_template` SET `size`='1', `flags`=1048616 WHERE `entry` IN (279254, 278407);
UPDATE `gameobject_template` SET `size`='1', `faction`=1375, `flags`=32 WHERE `entry`=281224;
UPDATE `gameobject_template` SET `size`='1' WHERE `entry` IN (278775);
UPDATE `gameobject_template` SET `size`='1.1', `flags`=32 WHERE `entry` IN (281307, 272471);
UPDATE `gameobject_template` SET `size`='1', `faction`=114 WHERE `entry` IN (206566, 206565);
UPDATE `gameobject_template` SET `size`='1', `faction`=114, `flags`=32 WHERE `entry`=206564;

INSERT IGNORE INTO `locales_gameobject` (`name_loc8`, `entry`) VALUES
('Эффект еды', 206565),
('Эффект ускорения', 206566),
('Эффект Берсерка', 206564),
('Азерит', 272471),
('Азерит', 281307),
('Вестник войны', 279254),
('Alliance Airship Prep Collision', 281224),
('Знамя Альянса', 278775),
('Клинок Рассвета', 278407);


INSERT IGNORE INTO `creature_template` (`entry`, `trainer_type`, `gossip_menu_id`, `exp`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VehicleId`, `HoverHeight`, `SandboxScalingID`, `InhabitType`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `ControllerID`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `WorldEffects`, `PassiveSpells`, `flags_extra`) VALUES
(133532, 0, 0, NULL, 110, 110, 35, 0, 0, 1, 1, 2000, 2000, 1, 33554432, 4194304, 1, 5809, 1, 66, 7, 80, 90, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Сброшенный груз
(133533, 0, 0, NULL, 110, 110, 2059, 0, 0, 1, 1.142857, 2000, 2000, 1, 33587200, 71305216, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Сброшенный груз
(129344, 0, 0, NULL, 110, 110, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 33555200, 2048, 1, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- 129344
(133044, 0, 0, NULL, 112, 112, 84, 0, 0, 1, 1.142857, 2000, 2000, 1, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Главнокомандующий Тремблейд
(130682, 0, 22093, NULL, 111, 111, 84, 1, 0, 1, 1.142857, 2000, 2000, 8, 32768, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Рилая Бушующая Волна
(130535, 0, 0, NULL, 111, 111, 84, 0, 0, 1, 1.428571, 2000, 2000, 2, 32768, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Сержант Шмидт
(133266, 0, 0, NULL, 110, 110, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 295680, 67110912, 0, 5801, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Байрон Холунго
(133267, 0, 0, NULL, 110, 110, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 295680, 67110912, 0, 5801, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Байрон Холунго
(132960, 0, 0, NULL, 110, 110, 1732, 128, 0, 1, 1.142857, 2000, 2000, 2, 33280, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Полевой алхимик Броудок
(133223, 0, 0, NULL, 1, 1, 7, 0, 0, 1, 0.8571429, 2000, 2000, 1, 33849344, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Аспид
(133042, 0, 0, NULL, 111, 111, 84, 0, 0, 1, 1.142857, 2000, 2000, 1, 0, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Офицер воздушных войск Габриэль
(132718, 0, 0, NULL, 111, 111, 123, 0, 0, 1, 1.142857, 2000, 2000, 2, 32768, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Офицер воздушных войск Дамаркус
(132800, 0, 0, NULL, 110, 110, 1732, 0, 0, 1, 1.142857, 2000, 2000, 4, 32768, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Маввит Имбирный Хруст
(130537, 0, 0, NULL, 110, 110, 84, 0, 0, 1, 1.142857, 2000, 2000, 1, 32768, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Сержант Блэквелл
(132739, 0, 22077, NULL, 110, 110, 1732, 1, 0, 1, 1.142857, 2000, 2000, 4, 32768, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Физзель Имбирный Хруст
(130532, 0, 0, NULL, 110, 110, 1732, 0, 0, 1, 1.142857, 2000, 2000, 4, 512, 2048, 0, 0, 1, 0, 3, 98, 110, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Мастер Матиас Шоу
(133220, 0, 0, NULL, 111, 111, 83, 0, 0, 3.2, 2, 2000, 2000, 1, 33817088, 2048, 1, 4227, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Гоблинский воздушный шар
(133225, 0, 0, NULL, 1, 1, 31, 0, 0, 1, 0.8571429, 2000, 2000, 1, 33816576, 67110912, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Лягушка
(125269, 0, 0, NULL, 112, 112, 16, 0, 0, 1, 1.142857, 2000, 2000, 1, 33816576, 2048, 1, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 128), -- Контроллер
(133224, 0, 0, NULL, 1, 1, 188, 0, 0, 1, 0.8571429, 2000, 2000, 1, 262656, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Жук
(132972, 0, 0, NULL, 110, 110, 1732, 0, 0, 1, 1.142857, 2000, 2000, 1, 33536, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Канонир Небесной стражи
(132702, 0, 0, NULL, 110, 110, 1732, 0, 0, 1, 1, 2000, 2000, 1, 33832960, 4194304, 1, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Корабельное орудие Альянса
(130540, 0, 0, NULL, 110, 110, 84, 0, 0, 1, 1.142857, 2000, 2000, 1, 32768, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Морпех Небесной стражи
(125253, 0, 0, NULL, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 262144, 71305216, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Азеритовый разлом
(130542, 0, 0, NULL, 110, 110, 1732, 0, 0, 1, 1.142857, 2000, 2000, 1, 0, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Матрос
(133222, 0, 0, NULL, 111, 111, 190, 0, 0, 1, 1.142857, 2000, 2000, 1, 33849344, 2048, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Паук
(133542, 0, 0, NULL, 1, 1, 35, 0, 0, 1, 1.142857, 2000, 2000, 1, 262144, 67110912, 0, 0, 1, 0, 3, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0), -- 133542
(133221, 0, 0, NULL, 1, 1, 190, 0, 0, 1, 1, 2000, 2000, 1, 33816576, 2048, 1, 0, 1, 0, 3, 0, 0, 0, 2000, -1, 0, 0, 0, 0, NULL, NULL, 0), -- Стремительный мягкопанцирник
(131149, 0, 0, NULL, 100, 100, 35, 0, 0, 4.8, 1.714286, 2000, 2000, 4, 294912, 67110912, 1, 0, 3, 0, 7, 0, 0, 0, 100, -1, 0, 0, 0, 0, NULL, NULL, 0); -- Ветролет

INSERT IGNORE INTO `creature_template_wdb` (`Entry`, `Name1`, `NameAlt1`, `Title`, `TitleAlt`, `CursorName`, `TypeFlags`, `TypeFlags2`, `Type`, `Family`, `Classification`, `KillCredit1`, `KillCredit2`, `VignetteID`, `DisplayId1`, `DisplayId2`, `DisplayId3`, `DisplayId4`, `HpMulti`, `PowerMulti`, `Leader`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `QuestItem7`, `QuestItem8`, `QuestItem9`, `QuestItem10`, `MovementInfoID`, `RequiredExpansion`, `FlagQuest`, `VerifiedBuild`) VALUES
(133532, 'Сброшенный груз', '', NULL, NULL, NULL, 525312, 0, 9, 0, 0, 0, 0, 0, 82987, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Сброшенный груз
(133533, 'Сброшенный груз', '', NULL, NULL, NULL, 1024, 0, 10, 0, 0, 0, 0, 0, 28475, 35495, 0, 0, 0.000476, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Сброшенный груз
(129344, '', '', NULL, NULL, NULL, 16778240, 16, 10, 0, 0, 0, 0, 2408, 328, 11686, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- 129344
(132702, 'Корабельное орудие Альянса', '', NULL, NULL, NULL, 8, 0, 9, 0, 1, 0, 0, 0, 37369, 0, 0, 0, 4, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Корабельное орудие Альянса
(125253, 'Азеритовый разлом', '', NULL, NULL, NULL, 1074790400, 0, 10, 0, 0, 0, 0, 0, 82685, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 26365), -- Азеритовый разлом
(133223, 'Аспид', '', NULL, NULL, NULL, 1073741824, 0, 8, 0, 0, 0, 0, 0, 1986, 1206, 1987, 0, 0.01, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 0, 0, 26365), -- Аспид
(133225, 'Лягушка', '', NULL, NULL, NULL, 1074790400, 0, 8, 0, 0, 0, 0, 0, 54851, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 121, 0, 0, 26365), -- Лягушка
(132972, 'Канонир Небесной стражи', '', NULL, NULL, NULL, 0, 0, 7, 0, 0, 0, 0, 0, 82662, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 26365), -- Канонир Небесной стражи
(132960, 'Полевой алхимик Броудок', '', NULL, NULL, NULL, 0, 0, 7, 0, 1, 0, 0, 0, 82625, 0, 0, 0, 70, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Полевой алхимик Броудок
(132800, 'Маввит Имбирный Хруст', '', 'Лига исследователей', NULL, NULL, 4096, 0, 7, 0, 0, 0, 0, 0, 58771, 0, 0, 0, 3, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Маввит Имбирный Хруст
(132739, 'Физзель Имбирный Хруст', '', 'Лига исследователей', NULL, NULL, 4096, 0, 7, 0, 0, 0, 0, 0, 59080, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Физзель Имбирный Хруст
(132718, 'Офицер воздушных войск Дамаркус', '', NULL, NULL, NULL, 4104, 0, 7, 0, 1, 0, 0, 0, 58765, 0, 0, 0, 14, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Офицер воздушных войск Дамаркус
(130682, 'Рилая Бушующая Волна', '', NULL, NULL, NULL, 2101256, 0, 7, 0, 1, 0, 0, 0, 81343, 0, 0, 0, 25, 25, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Рилая Бушующая Волна
(130537, 'Сержант Блэквелл', '', NULL, NULL, NULL, 4096, 0, 7, 0, 0, 0, 0, 0, 81284, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Сержант Блэквелл
(130532, 'Мастер Матиас Шоу', '', 'Глава ШРУ', NULL, NULL, 0, 0, 7, 0, 0, 0, 0, 0, 72253, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 26365), -- Мастер Матиас Шоу
(133266, 'Байрон Холунго', '', NULL, NULL, NULL, 1074794496, 0, 10, 0, 1, 0, 0, 0, 11686, 0, 0, 0, 7, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 4, 26365), -- Байрон Холунго
(133267, 'Байрон Холунго', '', NULL, NULL, NULL, 4096, 0, 10, 0, 1, 0, 0, 0, 82818, 0, 0, 0, 7, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 4, 26365), -- Байрон Холунго
(133044, 'Главнокомандующий Тремблейд', '', 'Капитан Небесной стражи', NULL, NULL, 2101352, 0, 7, 0, 2, 0, 0, 0, 82677, 0, 0, 0, 40, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Главнокомандующий Тремблейд
(133042, 'Офицер воздушных войск Габриэль', '', NULL, NULL, NULL, 4096, 0, 7, 0, 2, 0, 0, 0, 82676, 0, 0, 0, 30, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Офицер воздушных войск Габриэль
(130542, 'Матрос', 'Матрос', NULL, NULL, NULL, 0, 0, 7, 0, 0, 0, 0, 0, 26989, 26990, 26991, 26992, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Матрос
(130535, 'Сержант Шмидт', '', NULL, NULL, NULL, 0, 0, 7, 0, 1, 0, 0, 0, 59979, 0, 0, 0, 14, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 144, -1, 0, 26365), -- Сержант Шмидт
(133222, 'Паук', '', NULL, NULL, NULL, 1074790400, 0, 8, 0, 0, 0, 0, 0, 74223, 65300, 0, 0, 0.05, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Паук
(125269, 'Контроллер', '', NULL, NULL, NULL, 1091568716, 16, 10, 0, 0, 0, 0, 0, 1126, 11686, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Контроллер
(130540, 'Морпех Небесной стражи', 'Морпех Небесной стражи', NULL, NULL, NULL, 4096, 0, 7, 0, 0, 0, 0, 0, 58893, 58172, 0, 0, 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -1, 0, 26365), -- Морпех Небесной стражи
(133224, 'Жук', '', NULL, NULL, 'wildpetcapturable', 1074790400, 0, 8, 0, 0, 0, 0, 0, 7511, 15467, 8971, 15468, 0.2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 0, 0, 26365), -- Жук
(133542, '', '', NULL, NULL, NULL, 1074790400, 0, 10, 0, 0, 0, 0, 0, 82685, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 26365), -- 133542
(133221, 'Стремительный мягкопанцирник', '', NULL, NULL, NULL, 1074790400, 0, 8, 0, 0, 0, 0, 0, 32789, 32790, 32791, 45880, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 113, 6, 0, 26365), -- Стремительный мягкопанцирник
(133220, 'Гоблинский воздушный шар', '', NULL, NULL, NULL, 1074790400, 0, 10, 0, 0, 0, 0, 0, 32371, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 187, -1, 0, 26365), -- Гоблинский воздушный шар
(131149, 'Ветролет', '', NULL, NULL, NULL, 1074135048, 0, 9, 0, 0, 0, 0, 0, 22878, 0, 0, 0, 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 174, 5, 0, 26365); -- Ветролет


INSERT IGNORE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`) VALUES
(82987, 2, 1.5, 0),
(82677, 0.26, 1.875, 0),
(81343, 0.208, 1.5, 0),
(82818, 0.3672, 1.8, 0),
(82625, 0.306, 1.5, 0),
(82676, 0.3825, 1.875, 0),
(81284, 0.306, 1.5, 0),
(82662, 0.306, 1.5, 0),
(82685, 0.5, 1, 0);

UPDATE `creature_model_info` SET `BoundingRadius`=1.340505 WHERE `DisplayID`=66393;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=1 WHERE `DisplayID`=70544;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=1 WHERE `DisplayID`=72117;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=1 WHERE `DisplayID`=72978;
UPDATE `creature_model_info` SET `BoundingRadius`=0.76802, `DisplayID_Other_Gender`=1 WHERE `DisplayID`=69902;
UPDATE `creature_model_info` SET `BoundingRadius`=3.829555 WHERE `DisplayID`=27710;
UPDATE `creature_model_info` SET `BoundingRadius`=0.372, `CombatReach`=1.5 WHERE `DisplayID`=51;
UPDATE `creature_model_info` SET `CombatReach`=0.75, `DisplayID_Other_Gender`=9 WHERE `DisplayID`=64799;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3813488, `CombatReach`=0.2 WHERE `DisplayID`=61549;
UPDATE `creature_model_info` SET `BoundingRadius`=10.3549 WHERE `DisplayID`=32371;
UPDATE `creature_model_info` SET `BoundingRadius`=0.07, `CombatReach`=1.5 WHERE `DisplayID`=54851;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3, `CombatReach`=0.375 WHERE `DisplayID`=32789;
UPDATE `creature_model_info` SET `BoundingRadius`=2.720518 WHERE `DisplayID`=22878;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=2, `DisplayID_Other_Gender`=8 WHERE `DisplayID`=59799;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8530744 WHERE `DisplayID`=77398;
UPDATE `creature_model_info` SET `BoundingRadius`=1.097172, `CombatReach`=0, `DisplayID_Other_Gender`=6 WHERE `DisplayID`=23681;
UPDATE `creature_model_info` SET `BoundingRadius`=0.7414923 WHERE `DisplayID`=26079;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8147316 WHERE `DisplayID`=61334;
UPDATE `creature_model_info` SET `BoundingRadius`=0.6, `CombatReach`=0.9 WHERE `DisplayID`=38453;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8841911, `DisplayID_Other_Gender`=6 WHERE `DisplayID`=24994;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1 WHERE `DisplayID`=11686;
UPDATE `creature_model_info` SET `BoundingRadius`=0.775, `CombatReach`=1.5 WHERE `DisplayID`=49764;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5280291, `CombatReach`=1.8 WHERE `DisplayID`=66644;

INSERT IGNORE INTO `gossip_menu` (`Entry`, `TextID`, `FriendshipFactionID`) VALUES
(22077, 33808, 0), -- 132739 (Физзель Имбирный Хруст)
(22093, 33830, 0); -- 130682 (Рилая Бушующая Волна)

INSERT IGNORE INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`) VALUES
(22093, 0, 0, 'Можешь сотворить мне еду?', 1, 1, 0, 0, 0, 0, 0, '', 0, 0);

INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(130532, @GROUP_ID+0, 0, 'Неплохой отряд. Конечно, еще разбойник-другой не помешал бы... но и вы сгодитесь.', 12, 0, 100, 1, 0, 94736, 143496, 'Мастер Матиас Шоу'),
(130532, @GROUP_ID+1, 0, 'Герои, на острове у побережья Фераласа обнаружены залежи азерита. Нельзя допустить, чтобы до них добралась Орда.', 12, 0, 100, 1, 0, 94733, 143483, 'Мастер Матиас Шоу'),
(130532, @GROUP_ID+2, 0, 'Наш корабль находится прямо над центром острова. Соберите как можно больше азерита. В нем – залог нашей победы!', 12, 0, 100, 1, 0, 94734, 143484, 'Мастер Матиас Шоу'),
(130532, @GROUP_ID+3, 0, 'Герои, под нами богатые залежи азерита. Спускайтесь и соберите его столько, сколько сможете. И не щадите мародеров из Орды!', 12, 0, 100, 1, 0, 94737, 143486, 'Мастер Матиас Шоу'),
(130532, @GROUP_ID+4, 0, 'Прекрасно! Еще немного азерита, и победа у нас в кармане!', 12, 0, 100, 0, 0, 8173, 143491, 'Мастер Матиас Шоу'),
(130532, @GROUP_ID+5, 0, 'А вот и припасы! Собирайте их!', 12, 0, 100, 0, 0, 94739, 143493, 'Мастер Матиас Шоу'),
(130532, @GROUP_ID+6, 0, 'Азерит снова выходит на поверхность! Захватите отмеченные точки!', 12, 0, 100, 0, 0, 8173, 143492, 'Мастер Матиас Шоу'),
(130532, @GROUP_ID+7, 0, 'Блестяще, герои! Король Ринн будет счастлив узнать о вашей победе. За Альянс!', 12, 0, 100, 0, 0, 8173, 143494, 'Мастер Матиас Шоу'),
(130540, @GROUP_ID+0, 0, 'За Альянс!', 12, 0, 100, 0, 0, 74681, PLEASE_SET_A_BROADCASTTEXT_ID, 'Морпех Небесной стражи'), -- BroadcastTextID: 23351 - 41981 - 45042 - 60929 - 65834 - 68597 - 70902 - 81073 - 84768 - 85083 - 87296 - 88567 - 89126 - 91856 - 97246 - 99191 - 101606 - 101952 - 108614 - 108780 - 109297 - 109740 - 112900 - 113099 - 114470 - 114884 - 117268 - 119538 - 127510 - 138422 - 140044 - 141897 - 141898 - 143179 - 146212
(132718, @GROUP_ID+0, 0, 'Открыть огонь!', 12, 0, 100, 25, 0, 2678, PLEASE_SET_A_BROADCASTTEXT_ID, 'Офицер воздушных войск Дамаркус'); -- BroadcastTextID: 10961 - 31379 - 44156 - 44192 - 93916 - 124371 - 124587 - 139052 - 140025 - 140226 - 145891 - 146233

DELETE FROM `vehicle_template_accessory` WHERE `EntryOrAura` IN (133266, 133532, 133220);
REPLACE INTO `vehicle_template_accessory` (`EntryOrAura`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`, `offsetX`, `offsetY`, `offsetZ`, `offsetO`) VALUES
(133266, 133267, 0, 1, 'Байрон Холунго - Байрон Холунго', 8, 0, 0, 0, 0, 0), -- Байрон Холунго - Байрон Холунго
(133532, 133533, 1, 1, 'Сброшенный груз - Сброшенный груз', 8, 0, 0, 0, -10, 0), -- Сброшенный груз - Сброшенный груз
(133220, 93493, 0, 1, 'Гоблинский воздушный шар - Goblin Sky Bomber', 8, 0, 1.5, 0, 0.8263015, 0); -- Гоблинский воздушный шар - Goblin Sky Bomber

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (133266, 133532, 133220);
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(133266, 46598, 1, 0),
(133532, 46598, 1, 0),
(133220, 46598, 1, 0);

DELETE FROM `npc_text` WHERE `ID` IN (33830, 33808);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(33830, 1, 0, 0, 0, 0, 0, 0, 0, 146213, 0, 0, 0, 0, 0, 0, 0, 26365), -- 33830
(33808, 1, 1, 0, 0, 0, 0, 0, 0, 146019, 146018, 0, 0, 0, 0, 0, 0, 26365); -- 33808

REPLACE INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `ExtendedCost`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`, `money`, `RandomPropertiesSeed`, `RandomPropertiesID`, `Context`, `BonusListID`, `ItemModifiers`) VALUES
(132960, 138727, 1, 0, 6181, 0, 0, 26365, 0, 0, 0, 0, '', ''), -- Potion of Defiance
(132960, 138728, 2, 0, 6181, 0, 0, 26365, 0, 0, 0, 0, '', ''), -- Potion of Trivial Invisibility
(132960, 138488, 3, 0, 6181, 0, 0, 26365, 0, 0, 0, 0, '', ''), -- Saltwater Potion
(132960, 138729, 4, 0, 6181, 0, 0, 26365, 0, 0, 0, 0, '', ''), -- Potion of Heightened Senses
(132960, 138486, 5, 0, 6181, 0, 0, 26365, 0, 0, 0, 0, '', ''), -- "Third Wind" Potion
(132960, 138479, 6, 0, 6182, 0, 0, 26365, 0, 0, 0, 0, '', ''), -- Potato Stew Feast
(132960, 138478, 7, 0, 6182, 0, 0, 26365, 0, 0, 0, 0, '', ''); -- Feast of Ribs


DELETE FROM`creature` WHERE `map` IN (1857, 1856);
SELECT @CGUID := `guid`+1 FROM `creature` ORDER BY `creature`.`guid` DESC limit 1;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`) VALUES
('@CGUID+0', 130542, 1856, 0, 0, 3, 1, '0', 0, 0, 28.81443, -0.09819944, 22.8208, 6.271115, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Deckhand (Area: -Unknown-) (Auras: 123475 - Use Standing)
('@CGUID+1', 130540, 1856, 0, 0, 3, 1, '0', 0, 0, -1.112324, -13.68331, 20.53237, 4.633946, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Skyguard Marine (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+2', 132739, 1856, 0, 0, 3, 1, '0', 0, 0, -58.65279, -2.403793, 23.48108, 5.089345, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Feezzel Gingersnap (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+3', 132960, 1856, 0, 0, 3, 1, '0', 0, 0, -54.8387, 5.621935, 23.50576, 5.393167, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Battle Alchemist Broadoak (Area: -Unknown-) (Auras: 247198 - Potionmaster) (possible waypoints or random movement)
('@CGUID+4', 130540, 1856, 0, 0, 3, 1, '0', 0, 0, -24.66699, -13.02368, 20.53485, 4.67833, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Skyguard Marine (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+5', 132800, 1856, 0, 0, 3, 1, '0', 0, 0, -57.84232, -4.479187, 23.53291, 1.958887, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Mavvus Gingersnap (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+6', 132702, 1856, 0, 0, 3, 1, '0', 0, 0, -5.01993, 24.43458, 21.73203, 1.597032, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Alliance Gunship Cannon (Area: -Unknown-)
('@CGUID+7', 130535, 1856, 0, 0, 3, 1, '0', 0, 0, 16.10816, -2.13068, 20.50499, 3.127833, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Sergeant Schmidt (Area: -Unknown-) (Auras: 18950 - Invisibility and Stealth Detection) (possible waypoints or random movement)
('@CGUID+8', 132972, 1856, 0, 0, 3, 1, '0', 0, 0, -31.39488, 21.63326, 21.77812, 3.055504, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Skyguard Cannoneer (Area: -Unknown-) (Auras: 261772 - -Unknown-) (possible waypoints or random movement)
('@CGUID+9', 130540, 1856, 0, 0, 3, 1, '0', 0, 0, 39.50042, 44.24651, 25.1163, 4.258817, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 2923, 0, 0), -- Skyguard Marine (Area: -Unknown-) (possible waypoints or random movement)
('@CGUID+10', 130532, 1856, 0, 0, 3, 1, '0', 0, 0, -13.95523, -0.3439941, 24.50034, 1.611735, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Master Mathias Shaw (Area: -Unknown-)
('@CGUID+11', 130537, 1856, 0, 0, 3, 1, '0', 0, 0, 15.81838, 2.732185, 20.50688, 3.041017, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Sergeant Blackwell (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+12', 130542, 1856, 0, 0, 3, 1, '0', 0, 0, -2.559082, 9.309692, 20.45645, 6.255189, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Deckhand (Area: -Unknown-) (Auras: 123475 - Use Standing)
('@CGUID+13', 132702, 1856, 0, 0, 3, 1, '0', 0, 0, -33.60635, 22.99365, 21.79163, 1.592117, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Alliance Gunship Cannon (Area: -Unknown-)
('@CGUID+14', 130540, 1856, 0, 0, 3, 1, '0', 0, 0, -14.47861, 11.64074, 20.4909, 1.57867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 2923, 0, 0), -- Skyguard Marine (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+15', 132972, 1856, 0, 0, 3, 1, '0', 0, 0, -16.8911, 21.85056, 21.68954, 2.82088, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Skyguard Cannoneer (Area: -Unknown-) (Auras: 261772 - -Unknown-) (possible waypoints or random movement)
('@CGUID+16', 130542, 1856, 0, 0, 3, 1, '0', 0, 0, 31.71438, -0.2573269, 23.38812, 5.293592, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Deckhand (Area: -Unknown-) (Auras: 123475 - Use Standing)
('@CGUID+17', 133042, 1856, 0, 0, 3, 1, '0', 0, 0, 42.84877, 3.690072, 25.1922, 4.270404, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Sky Marshall Gabriel (Area: -Unknown-) (Auras: )
('@CGUID+18', 132702, 1856, 0, 0, 3, 1, '0', 0, 0, -18.55915, 23.65011, 21.69766, 1.613786, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Alliance Gunship Cannon (Area: -Unknown-)
('@CGUID+19', 130540, 1856, 0, 0, 3, 1, '0', 0, 0, -1.453826, 12.36301, 20.53528, 1.704131, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 2923, 0, 0), -- Skyguard Marine (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+20', 130682, 1856, 0, 0, 3, 1, '0', 0, 0, -55.88002, 3.884849, 23.47029, 0.2848547, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Rylai Crestfall (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+21', 132972, 1856, 0, 0, 3, 1, '0', 0, 0, -3.735126, 22.57773, 21.73588, 2.383119, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Skyguard Cannoneer (Area: -Unknown-) (Auras: 261772 - -Unknown-) (possible waypoints or random movement)
('@CGUID+22', 133044, 1856, 0, 0, 3, 1, '0', 0, 0, 44.01662, 0.04311647, 25.20823, 3.087687, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Grand Marshal Tremblade (Area: -Unknown-) (Auras: )
('@CGUID+23', 130542, 1856, 0, 0, 3, 1, '0', 0, 0, -3.024414, -9.304443, 20.45474, 0.04257703, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Deckhand (Area: -Unknown-) (Auras: 123475 - Use Standing)
('@CGUID+24', 130540, 1856, 0, 0, 3, 1, '0', 0, 0, -27.79239, 11.54808, 20.56229, 1.556898, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 2923, 0, 0), -- Skyguard Marine (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+25', 132718, 1856, 0, 0, 3, 1, '0', 0, 0, -13.29256, 2.026168, 24.43622, 2.166225, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Sky Marshal Damarcus (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+26', 130540, 1856, 0, 0, 3, 1, '0', 0, 0, -12.96392, -13.65169, 20.47824, 4.683331, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Skyguard Marine (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+27', 88238, 1856, 0, 0, 3, 1, '0', 0, 0, -24.77263, -0.02911947, 20.68126, 6.244112, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Alliance Spirit Guide (Area: -Unknown-) (Auras: 9036 - Ghost; 9617 - Ghost Visual)

('@CGUID+28', 133049, 1857, 0, 0, 3, 1, '0', 0, 0, 12.35111, -4.239623, 34.65939, 2.792168, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Gunship Warguard (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+29', 131773, 1857, 0, 0, 3, 1, '0', 0, 0, 22.57614, 10.75596, 40.539, 2.081273, 7200, 3073, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0), -- Nathanos Blightcaller (Area: -Unknown-) (possible waypoints or random movement)
('@CGUID+30', 133047, 1857, 0, 0, 3, 1, '0', 0, 0, 15.05074, 25.78127, 35.46322, 0.7782341, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Peon (Area: -Unknown-) (Auras: 261772 - -Unknown-) (possible waypoints or random movement)
('@CGUID+31', 133046, 1857, 0, 0, 3, 1, '0', 0, 0, 17.9041, 29.11562, 36.22509, 1.458826, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Horde Gunship Cannon (Area: -Unknown-)
('@CGUID+32', 133045, 1857, 0, 0, 3, 1, '0', 0, 0, -4.366679, -19.42848, 34.2917, 1.542392, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 12265, 0, 0), -- War Drummer (Area: -Unknown-) (Auras: 228832 - Mod Scale Increase) (possible waypoints or random movement)
('@CGUID+33', 130677, 1857, 0, 0, 3, 1, '0', 0, 0, -35.12257, -21.65584, 34.13159, 0.7379164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Gunship Grunt (Area: -Unknown-) (possible waypoints or random movement)
('@CGUID+34', 133049, 1857, 0, 0, 3, 1, '0', 0, 0, 12.5122, 4.569972, 34.66072, 3.447938, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Gunship Warguard (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+35', 133047, 1857, 0, 0, 3, 1, '0', 0, 0, -1.108776, 25.59661, 34.53367, 2.613483, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Peon (Area: -Unknown-) (Auras: 261772 - -Unknown-) (possible waypoints or random movement)
('@CGUID+36', 133046, 1857, 0, 0, 3, 1, '0', 0, 0, -3.848511, 29.91276, 34.82189, 1.578369, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Horde Gunship Cannon (Area: -Unknown-)
('@CGUID+37', 130677, 1857, 0, 0, 3, 1, '0', 0, 0, -34.86715, -18.19296, 34.32552, 5.445984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Gunship Grunt (Area: -Unknown-) (possible waypoints or random movement)
('@CGUID+38', 133048, 1857, 0, 0, 3, 1, '0', 0, 0, 43.07159, -5.183613, 30.1788, 2.77451, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Tevs Rusthammer (Area: -Unknown-)
('@CGUID+39', 130677, 1857, 0, 0, 3, 1, '0', 0, 0, -34.07933, 18.82949, 34.29133, 0.4215655, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Gunship Grunt (Area: -Unknown-) (possible waypoints or random movement)
('@CGUID+40', 133059, 1857, 0, 0, 3, 1, '0', 0, 0, 10.43213, 14.26849, 34.64105, 6.241566, 7200, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- General Harris (Area: -Unknown-) (Auras: 18950 - Invisibility and Stealth Detection) (possible waypoints or random movement)
('@CGUID+41', 133056, 1857, 0, 0, 3, 1, '0', 0, 0, 46.39288, 4.546422, 30.17881, 3.780831, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Xander Silberman (Area: -Unknown-) (possible waypoints or random movement)
('@CGUID+42', 131776, 1857, 0, 0, 3, 1, '0', 0, 0, 44.24065, 5.620277, 30.17881, 4.541813, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Jeron Emberfall (Area: -Unknown-) (Auras: ) (possible waypoints or random movement)
('@CGUID+43', 133043, 1857, 0, 0, 3, 1, '0', 0, 0, 48.26583, -0.3127959, 30.1788, 3.18577, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- High Warlord Volrath (Area: -Unknown-) (Auras: 164310 - Ashran Lane Mob Scaling Aura) (possible waypoints or random movement)
('@CGUID+44', 133047, 1857, 0, 0, 3, 1, '0', 0, 0, -25.62415, 24.48469, 33.94878, 0.1399965, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Peon (Area: -Unknown-) (Auras: 261772 - -Unknown-) (possible waypoints or random movement)
('@CGUID+45', 133046, 1857, 0, 0, 3, 1, '0', 0, 0, -23.28647, 27.40226, 34.42829, 1.527349, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Horde Gunship Cannon (Area: -Unknown-)
('@CGUID+46', 133045, 1857, 0, 0, 3, 1, '0', 0, 0, 10.22541, -19.54896, 34.92748, 1.773273, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 12265, 0, 0), -- War Drummer (Area: -Unknown-) (Auras: 228832 - Mod Scale Increase) (possible waypoints or random movement)
('@CGUID+47', 130677, 1857, 0, 0, 3, 1, '0', 0, 0, -33.27935, 21.26822, 34.1511, 5.532715, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Gunship Grunt (Area: -Unknown-) (possible waypoints or random movement)
('@CGUID+48', 88239, 1857, 0, 0, 3, 1, '0', 0, 0, 0.8771198, -0.1981975, 34.29357, 1.636604, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); -- Horde Spirit Guide (Area: 0) (Auras: 9036 - Ghost; 9617 - Ghost Visual)

DELETE FROM`gameobject` WHERE `map` IN (1857, 1856);
SELECT @OGUID := `guid`+1 FROM `gameobject` ORDER BY `gameobject`.`guid` DESC limit 1;
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `AiID`) VALUES
('@OGUID+1', 278775, 1856, 0, 0, 3, '', 13.49236, 5.149053, 20.79655, 3.181429, 0, 0, 0, 1, 7200, 255, 1, 0), -- Знамя Альянса (Area: -Unknown-)
('@OGUID+2', 278775, 1856, 0, 0, 3, '', 13.60289, -4.7277, 20.79596, 3.10332, 0, 0, 0, 1, 7200, 255, 1, 0), -- Знамя Альянса (Area: -Unknown-)
('@OGUID+3', 281224, 1856, 0, 0, 3, '', 1, 1, 1, 0, 0, 0, 0, 1, 7200, 255, 1, 0), -- Alliance Airship Prep Collision (Area: -Unknown-)
('@OGUID+4', 281226, 1857, 0, 0, 3, '', 1, -1, 1, 0, 0, 0, 0, 1, 7200, 255, 1, 0), -- Horde Airship Prep Collision (Area: -Unknown-)
('@OGUID+5', 281026, 1857, 0, 0, 3, '', -4.214962, -18.10412, 34.19417, 0, 0, 0, 0, 1, 7200, 255, 1, 0), -- Боевые барабаны (Area: -Unknown-)
('@OGUID+6', 281026, 1857, 0, 0, 3, '', 9.989483, -18.6586, 34.79845, 0, 0, 0, 0, 1, 7200, 255, 1, 0); -- Боевые барабаны (Area: -Unknown-)

UPDATE `creature_template` SET `BaseAttackTime`=2000 WHERE `entry`=94365; -- 0
UPDATE `creature_template` SET `speed_run`=1.142857, `BaseAttackTime`=2000 WHERE `entry`=99904; -- 0
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.114286, `BaseAttackTime`=2000, `unit_class`=1 WHERE `entry`=108452; -- 0
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `npcflag2`=8, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=88238; -- 0
UPDATE `creature_template` SET `speed_walk`=1, `BaseAttackTime`=2000, `unit_flags`=33587200 WHERE `entry`=100868; -- 0
UPDATE `creature_template` SET `speed_run`=1.142857, `BaseAttackTime`=2000, `unit_flags`=33554704 WHERE `entry`=98680; -- 0
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000 WHERE `entry`=99887; -- 0
UPDATE `creature_template` SET `BaseAttackTime`=2000 WHERE `entry`=98167; -- 0
UPDATE `creature_template` SET `BaseAttackTime`=2000 WHERE `entry`=94358; -- 0
UPDATE `creature_template` SET `faction`=2401, `BaseAttackTime`=2000 WHERE `entry`=105451; -- 0
UPDATE `creature_template` SET `speed_run`=1.142857, `InhabitType`=3 WHERE `entry`=92870; -- 0
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=2401 WHERE `entry`=97285; -- 0
UPDATE `creature_template` SET `faction`=2401, `BaseAttackTime`=2000, `ScaleLevelDuration`=2000 WHERE `entry`=100820; -- 0
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000 WHERE `entry`=94072; -- 0
UPDATE `creature_template` SET `BaseAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=101398; -- 0
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `speed_run`=0.8571429, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=86716; -- 0
UPDATE `creature_template` SET `minlevel`=100, `maxlevel`=100, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=295424, `unit_flags2`=2048, `ScaleLevelDuration`=100, `ControllerID`=-1 WHERE `entry`=93493; -- 0

replace INTO `creature_equip_template` (`CreatureID`, `ItemID1`, `ItemID2`, `ItemID3`, `ItemID4`, `ItemID5`, `ItemID6`) VALUES
(88238, 12591, 0, 0, 0, 0, 0), -- Alliance Spirit Guide
(93493, 0, 0, 0, 0, 94714, 0), -- Goblin Sky Bomber
(94358, 120978, 15, 0, 0, 0, 0), -- Ashbringer
(94365, 115802, 0, 0, 0, 0, 0), -- Ashbringer
(130532, 47104, 0, 47104, 0, 0, 0), -- Master Mathias Shaw
(130535, 47517, 0, 110155, 0, 118404, 0), -- Sergeant Schmidt
(130537, 47517, 0, 110155, 0, 118404, 0), -- Sergeant Blackwell
(130540, 65492, 0, 111717, 0, 62400, 0), -- Skyguard Marine
(130542, 1493, 0, 0, 0, 0, 0), -- Deckhand
(130682, 45886, 0, 0, 0, 72271, 0), -- Rylai Crestfall
(132718, 47517, 0, 110155, 0, 35018, 0), -- Sky Marshal Damarcus
(132972, 0, 0, 0, 0, 120060, 0), -- Skyguard Cannoneer
(133044, 0, 0, 0, 0, 62285, 0), -- Grand Marshal Tremblade
(88239, 13337, 0, 0, 0, 0, 0), -- Horde Spirit Guide
(130677, 56912, 0, 56912, 0, 106217, 0), -- Gunship Grunt
(131773, 65795, 0, 0, 0, 5258, 0), -- Nathanos Blightcaller
(131776, 76364, 0, 0, 0, 0, 0), -- Jeron Emberfall
(133043, 0, 0, 0, 0, 2550, 0), -- High Warlord Volrath
(133045, 3350, 0, 3350, 0, 0, 0), -- War Drummer
(133048, 1911, 0, 0, 0, 0, 0), -- Tevs Rusthammer
(133049, 107367, 0, 0, 0, 2550, 0), -- Gunship Warguard
(133059, 108925, 0, 0, 0, 107953, 0); -- General Harris

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(130535, 0, 0x0, 0x1, '18950'), -- Sergeant Schmidt                Auras:    Invisibility and Stealth Detection
(130542, 0, 0x0, 0x100, '123475'), -- Deckhand                Auras:    Use Standing
(131149, 0, 0x3000000, 0x1, ''), -- Flying Machine                Auras:    
(132960, 0, 0x0, 0x1, '247198'), -- Battle Alchemist Broadoak                Auras:    Potionmaster
(132972, 0, 0x0, 0x1, '261772'), -- Skyguard Cannoneer                Auras:    -Unknown-
(133220, 0, 0x3000000, 0x1, ''), -- Goblin Hot Air Balloon                Auras:    
(133221, 0, 0x0, 0x1, '123168'), -- Skittering Softshell                Auras:    Mod Scale 115-120%
(133266, 0, 0x0, 0x0, ''), -- Byron Holungo                Auras:    
(133267, 0, 0x0, 0x0, '46598'), -- Byron Holungo                Auras:    Ride Vehicle Hardcoded
(133532, 0, 0x3000000, 0x1, ''), -- Air Supplies                Auras:    
(133533, 0, 0x0, 0x1, '87992'),  -- Air Supplies                Auras:    Crate State
(88239, 0, 0x10000, 0x1, '9036 9617'), -- Horde Spirit Guide                Auras:    Ghost,     Ghost Visual
(93493, 0, 0x0, 0x101, '43671'), -- Goblin Sky Bomber                Auras:    Ride Vehicle
(130677, 0, 0x0, 0x1, ''), -- Gunship Grunt                Auras:    
(131773, 0, 0x0, 0x1, ''), -- Nathanos Blightcaller                Auras:    
(131776, 0, 0x0, 0x0, ''), -- Jeron Emberfall                Auras:    
(132702, 0, 0x0, 0x1, ''), -- Alliance Gunship Cannon                Auras:    
(133043, 0, 0x0, 0x1, '164310'), -- High Warlord Volrath                Auras:    Ashran Lane Mob Scaling Aura
(133045, 0, 0x0, 0x1, '228832'), -- War Drummer                Auras:    Mod Scale Increase
(133046, 0, 0x0, 0x1, ''), -- Horde Gunship Cannon                Auras:    
(133047, 0, 0x0, 0x1, '261772'), -- Peon                Auras:    -Unknown-
(133048, 0, 0x0, 0x1, ''), -- Tevs Rusthammer                Auras:    
(133049, 0, 0x0, 0x0, ''), -- Gunship Warguard                Auras:    
(133056, 0, 0x0, 0x1, ''), -- Xander Silberman                Auras:    
(133059, 0, 0x0, 0x100, '18950'), -- General Harris                Auras:    Invisibility and Stealth Detection
(133220, 0, 0x3000000, 0x1, ''), -- Goblin Hot Air Balloon                Auras:    
(133266, 0, 0x0, 0x0, ''), -- Byron Holungo                Auras:    
(133542, 0, 0x0, 0x1, ''); -- Air Supply Ground Dummy                Auras:    

DELETE FROM spell_script_names WHERE spell_id in (248688, 250917, 250921);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(248688, 'spell_bg_seething_shore_active_azerite'),
(250917, 'spell_bg_seething_shore_rocket_parachute2'),
(250921, 'spell_bg_seething_shore_rocket_parachute3');
