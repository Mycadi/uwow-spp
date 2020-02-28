DELETE FROM worldstate_template WHERE VariableID IN (12988,6078,13062,13107,12951,3010,841,10279,13996,2286,1963,1945,4009,4014,13501,13445,13660,13481,13208,12718,13106,13028,12733,10276,10698,12941,10278,10280,10282,10281,10277);
INSERT INTO `worldstate_template` (`VariableID`, `Type`, `ConditionID`, `Flags`, `DefaultValue`, `LinkedID`, `Comment`) VALUES
('12988', '3', '0', '65536', '0', '0', 'Enable WQ Thousand Needles'), -- WQ & Adventure Journal
('6078', '3', '0', '65536', '0', '0', 'Darkmoon Festival'), -- AreaPOI & Adventure Journal
('13062', '3', '0', '65536', '0', '0', 'Spring Balloon Festival'), -- AreaPOI & Adventure Journal
('13107', '3', '0', '65536', '0', '0', 'Glowcap Festival'), -- AreaPOI & Adventure Journal
('12951', '3', '0', '65536', '0', '0', 'Enable WQ Silithus'), -- WQ & Adventure Journal
('3010', '3', '0', '65536', '0', '0', 'Brewfest'), -- Adventure Journal
('841', '3', '0', '65536', '0', '0', 'Winter Veil'), -- Season Music
('10279', '3', '0', '65536', '0', '0', 'Northrend Timewalking Dungeon'), -- Adventure Journal
('13996', '3', '0', '65536', '0', '0', 'Northrend Timewalking Dungeon'), -- Adventure Journal
('2286', '3', '0', '65536', '0', '0', 'Midsummer Fire Festival'), -- Adventure Journal
('1963', '3', '0', '65536', '0', '0', 'Hallow\'s End'), -- Adventure Journal
('1945', '3', '0', '65536', '0', '0', 'Harvest Festival'), -- Adventure Journal
('4009', '3', '0', '65536', '0', '0', 'Pilgrim\'s Bounty'), -- Adventure Journal
('4014', '3', '0', '65536', '0', '0', 'Pilgrim\'s Bounty'), -- Adventure Journal
('13501', '3', '0', '65536', '0', '0', 'Moonkin Festival'), -- Adventure Journal
('13445', '3', '0', '65536', '0', '0', 'Trial of Style'), -- Adventure Journal
('13660', '3', '0', '65536', '0', '0', 'The Great Gnomeregan Run'), -- Adventure Journal
('13481', '3', '0', '65536', '0', '0', 'Auction House Dance Studio'), -- Adventure Journal
('13208', '3', '0', '65536', '0', '0', 'Kirin Tor Tavern Crawl'), -- Adventure Journal
('12718', '3', '0', '65536', '0', '0', 'Hatching of the Hippogryphs'), -- Adventure Journal
('13106', '3', '0', '65536', '0', '0', 'March of the Tadpoles'), -- Adventure Journal
('13028', '3', '0', '65536', '0', '0', 'Un\'Goro Madness'), -- Adventure Journal
('12733', '3', '0', '65536', '0', '0', 'Volunteer Guard Day'), -- Adventure Journal
('10276', '3', '0', '65536', '0', '0', 'Outland Timewalking Dungeon'), -- Adventure Journal
('10698', '3', '0', '65536', '0', '0', 'Cataclysm Timewalking Dungeon'), -- Adventure Journal
('12941', '3', '0', '65536', '0', '0', 'Mists of Pandaria Timewalking Dungeon'), -- Adventure Journal
('10281', '3', '0', '65536', '0', '0', 'Legion Dungeon Event'), -- Adventure Journal
('10277', '3', '0', '65536', '0', '0', 'World Quest Bonus Event'), -- Adventure Journal
('10278', '3', '0', '65536', '0', '0', 'Arena Skirmish Bonus Event'), -- Adventure Journal
('10280', '3', '0', '65536', '0', '0', 'Battleground Bonus Event'), -- Adventure Journal
('10282', '3', '0', '65536', '0', '0', 'Pet Battle Bonus Event'); -- Adventure Journal

DELETE FROM game_event_worldstate WHERE eventEntry IN (307,75,87,301,78,24,2,90,1,12,11,26,299,302,303,304,300,86,69,305,308,70,96,94,98,97,91,95,92,93);
INSERT INTO `game_event_worldstate` (`eventEntry`, `WorldStateID`, `Type`, `TypeID`, `Value`) VALUES
('307', '12988', '3', '0', '1'), -- Thousand Boat Bash
('75', '6078', '3', '0', '1'), -- Darkmoon
('87', '13062', '3', '0', '1'), -- Spring Balloon Festival
('301', '13107', '3', '0', '1'), -- Glowcap Festival
('78', '12951', '3', '0', '1'), -- Call of the Scarab
('24', '3010', '3', '0', '5'), -- Brewfest
('2', '841', '3', '0', '1'), -- Winter Veil
('90', '10279', '3', '0', '1'), -- Northrend Timewalking Dungeon
('90', '13996', '3', '0', '1'), -- Northrend Timewalking Dungeon
('1', '2286', '3', '0', '1'), -- Midsummer Fire Festival
('12', '1963', '3', '0', '1'), -- Hallow\'s End
('11', '1945', '3', '0', '1'), -- Harvest Festival
('26', '4009', '3', '0', '5'), -- Pilgrim\'s Bounty
('26', '4014', '3', '0', '5'), -- Pilgrim\'s Bounty
('299', '13501', '3', '0', '2'), -- Moonkin Festival
('302', '13445', '3', '0', '1'), -- Trial of Style
('303', '13445', '3', '0', '1'), -- Trial of Style
('304', '13660', '3', '0', '2'), -- The Great Gnomeregan Run
('300', '13481', '3', '0', '1'), -- Auction House Dance Studio
('86', '13208', '3', '0', '2'), -- Kirin Tor Tavern Crawl
('69', '12718', '3', '0', '1'), -- Hatching of the Hippogryphs
('305', '13106', '3', '0', '1'), -- March of the Tadpoles
('308', '13028', '3', '0', '1'), -- Un\'Goro Madness
('70', '12733', '3', '0', '1'), -- Volunteer Guard Day
('96', '10276', '3', '0', '1'), -- Outland Timewalking Dungeon
('96', '13996', '3', '0', '1'), -- Outland Timewalking Dungeon
('94', '10698', '3', '0', '1'), -- Cataclysm Timewalking Dungeon
('94', '13996', '3', '0', '1'), -- Cataclysm Timewalking Dungeon
('98', '12941', '3', '0', '1'), -- Mists of Pandaria Timewalking Dungeon
('98', '13996', '3', '0', '1'), -- Mists of Pandaria Timewalking Dungeon
('97', '10281', '3', '0', '1'), -- Legion Dungeon Event
('97', '13996', '3', '0', '1'), -- Legion Dungeon Event
('91', '10277', '3', '0', '1'), -- World Quest Bonus Event
('95', '10278', '3', '0', '1'), -- Arena Skirmish Bonus Event
('92', '10280', '3', '0', '1'), -- Battleground Bonus Event
('93', '10282', '3', '0', '1'); -- Pet Battle Bonus Event