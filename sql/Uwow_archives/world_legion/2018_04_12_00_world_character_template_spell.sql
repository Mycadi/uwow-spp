CREATE TABLE `character_template_spell` (
  `TemplateID` int(10) NOT NULL DEFAULT '38',
  `ClassID` tinyint(3) NOT NULL DEFAULT '0',
  `SpellID` int(10) NOT NULL DEFAULT '0',
  `RaceID` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `character_template_title` (
  `TemplateID` int(10) NOT NULL DEFAULT '38',
  `ClassID` tinyint(3) NOT NULL DEFAULT '0',
  `TitleID` int(10) NOT NULL DEFAULT '0',
  `RaceID` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `character_template_quest` (`TemplateID`, `ClassID`, `QuestID`, `RaceID`) VALUES 
-- DK
('37', '6', '12593', '0'),
('37', '6', '12619', '0'),
('37', '6', '12842', '0'),
('37', '6', '12848', '0'),
('37', '6', '12636', '0'),
('37', '6', '12641', '0'),
('37', '6', '12657', '0'),
('37', '6', '12850', '0'),
('37', '6', '12670', '0'),
('37', '6', '12678', '0'),
('37', '6', '12697', '0'),
('37', '6', '12698', '0'),
('37', '6', '12700', '0'),
('37', '6', '12701', '0'),
('37', '6', '12706', '0'),
('37', '6', '12714', '0'),
('37', '6', '12715', '0'),
('37', '6', '12719', '0'),
('37', '6', '12720', '0'),
('37', '6', '12723', '0'),
('37', '6', '12724', '0'),
('37', '6', '12725', '0'),
('37', '6', '12727', '0'),
('37', '6', '12738', '0'),
('37', '6', '12751', '0'),
('37', '6', '12754', '0'),
('37', '6', '12755', '0'),
('37', '6', '12756', '0'),
('37', '6', '12757', '0'),
('37', '6', '12778', '0'),
('37', '6', '12800', '0'),
('37', '6', '12801', '0'),
('37', '6', '13165', '0'),
('37', '6', '13166', '0'),
-- DK Horde
('37', '6', '13189', '5'),
-- DK Alliance
('37', '6', '13188', '3');

INSERT INTO `character_template_spell` (`TemplateID`, `ClassID`, `SpellID`, `RaceID`) VALUES 
('37', '12', '200175', '0');

INSERT INTO `character_template_title` (`TemplateID`, `ClassID`, `TitleID`, `RaceID`) VALUES 
('37', '12', '458', '0');

update character_template_item set ItemID = 114821 where ClassID = 12 AND TemplateID = 37 and ItemID = 123958;
