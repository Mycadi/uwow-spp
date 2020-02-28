ALTER TABLE `world_quest_update`   
	ADD COLUMN `VariableID1` INT(10) DEFAULT 0 NOT NULL AFTER `VariableID`,
	ADD COLUMN `Value1` INT(10) DEFAULT 0 NOT NULL AFTER `Value`,
	ADD COLUMN `EventID` INT(10) DEFAULT 0 NOT NULL AFTER `AreaID`;

insert into `world_quest_update` (`QuestID`, `Timer`, `VariableID`, `Value`, `VerifiedBuild`) values('43512','604800','12249','1','24015');

UPDATE `world_quest_update` SET `EventID` = '102' WHERE `QuestID` = '42819' AND `Timer` = '604800' AND `VariableID` = '12007';
UPDATE `world_quest_update` SET `EventID` = '102' WHERE `QuestID` = '42269' AND `Timer` = '604800' AND `VariableID` = '11682';
UPDATE `world_quest_update` SET `EventID` = '102' WHERE `QuestID` = '43193' AND `Timer` = '604800' AND `VariableID` = '11979';
UPDATE `world_quest_update` SET `EventID` = '102' WHERE `QuestID` = '43512' AND `Timer` = '604800' AND `VariableID` = '12249';

UPDATE `world_quest_update` SET `EventID` = '103' WHERE `QuestID` = '42270' AND `Timer` = '604800' AND `VariableID` = '11683';
UPDATE `world_quest_update` SET `EventID` = '103' WHERE `QuestID` = '43192' AND `Timer` = '604800' AND `VariableID` = '11978';
UPDATE `world_quest_update` SET `EventID` = '103' WHERE `QuestID` = '43513' AND `Timer` = '345600' AND `VariableID` = '12250';
UPDATE `world_quest_update` SET `EventID` = '103' WHERE `QuestID` = '43985' AND `Timer` = '604800' AND `VariableID` = '12389';
UPDATE `world_quest_update` SET `Timer` = '604800' WHERE `QuestID` = '43513' AND `Timer` = '345600' AND `VariableID` = '12250';

UPDATE `world_quest_update` SET `EventID` = '104' WHERE `QuestID` = '42779' AND `Timer` = '604800' AND `VariableID` = '11973';
UPDATE `world_quest_update` SET `EventID` = '104' WHERE `QuestID` = '43448' AND `Timer` = '604800' AND `VariableID` = '12210';
UPDATE `world_quest_update` SET `EventID` = '104' WHERE `QuestID` = '44287' AND `Timer` = '604800' AND `VariableID` = '12418';

insert into `world_quest_update` (`QuestID`, `Timer`, `VariableID`, `Value`, `VerifiedBuild`) values('46945','604800','12963','1','23937');
insert into `world_quest_update` (`QuestID`, `Timer`, `VariableID`, `Value`, `VerifiedBuild`) values('46947','604800','12938','1','24015');
insert into `world_quest_update` (`QuestID`, `Timer`, `VariableID`, `Value`, `VerifiedBuild`) values('46948','604800','12939','1','23877');
insert into `world_quest_update` (`QuestID`, `Timer`, `VariableID`, `Value`, `VerifiedBuild`) values('47061','604800','13427','1','23937');
UPDATE `world_quest_update` SET `EventID` = '102' WHERE `QuestID` = '46945' AND `Timer` = '604800' AND `VariableID` = '12963';
UPDATE `world_quest_update` SET `EventID` = '102' WHERE `QuestID` = '47061' AND `Timer` = '604800' AND `VariableID` = '13427';
UPDATE `world_quest_update` SET `EventID` = '103' WHERE `QuestID` = '46947' AND `Timer` = '604800' AND `VariableID` = '12938';
UPDATE `world_quest_update` SET `EventID` = '104' WHERE `QuestID` = '46948' AND `Timer` = '604800' AND `VariableID` = '12939';


UPDATE `world_quest_update` SET `EventID` = '109' WHERE `QuestID` = '41227' AND `Timer` = '21600' AND `VariableID` = '10893';
UPDATE `world_quest_update` SET `EventID` = '113' WHERE `QuestID` = '41420' AND `Timer` = '21600' AND `VariableID` = '10893';
UPDATE `world_quest_update` SET `EventID` = '108' WHERE `QuestID` = '42070' AND `Timer` = '21600' AND `VariableID` = '11084';
UPDATE `world_quest_update` SET `EventID` = '105' WHERE `QuestID` = '43247' AND `Timer` = '21600' AND `VariableID` = '11084';
UPDATE `world_quest_update` SET `EventID` = '116' WHERE `QuestID` = '43598' AND `Timer` = '21600' AND `VariableID` = '11187';
UPDATE `world_quest_update` SET `EventID` = '112' WHERE `QuestID` = '43600' AND `Timer` = '21600' AND `VariableID` = '11187';
UPDATE `world_quest_update` SET `EventID` = '110' WHERE `QuestID` = '41257' AND `Timer` = '21600' AND `VariableID` = '10893';
UPDATE `world_quest_update` SET `EventID` = '114' WHERE `QuestID` = '41421' AND `Timer` = '21600' AND `VariableID` = '10893';
UPDATE `world_quest_update` SET `EventID` = '107' WHERE `QuestID` = '43183' AND `Timer` = '21600' AND `VariableID` = '11084';
UPDATE `world_quest_update` SET `EventID` = '106' WHERE `QuestID` = '43248' AND `Timer` = '21600' AND `VariableID` = '11084';
UPDATE `world_quest_update` SET `EventID` = '115' WHERE `QuestID` = '43599' AND `Timer` = '21600' AND `VariableID` = '11187';
UPDATE `world_quest_update` SET `EventID` = '111' WHERE `QuestID` = '43601' AND `Timer` = '21600' AND `VariableID` = '11187';

UPDATE `world_quest_update` SET `EventID` = '102' WHERE `QuestID` = '49169' AND `Timer` = '604800' AND `VariableID` = '14252';
UPDATE `world_quest_update` SET `EventID` = '102' WHERE `QuestID` = '49171' AND `Timer` = '604800' AND `VariableID` = '14253';
UPDATE `world_quest_update` SET `EventID` = '103' WHERE `QuestID` = '49167' AND `Timer` = '604800' AND `VariableID` = '14251';
UPDATE `world_quest_update` SET `EventID` = '103' WHERE `QuestID` = '49166' AND `Timer` = '604800' AND `VariableID` = '14248';
UPDATE `world_quest_update` SET `EventID` = '104' WHERE `QuestID` = '49168' AND `Timer` = '604800' AND `VariableID` = '14249';
UPDATE `world_quest_update` SET `EventID` = '104' WHERE `QuestID` = '49170' AND `Timer` = '604800' AND `VariableID` = '14250';

UPDATE `world_quest_update` SET `EventID` = '180' WHERE `VariableID` = '14064';
UPDATE `world_quest_update` SET `EventID` = '181' WHERE `VariableID` = '14245';
UPDATE `world_quest_update` SET `EventID` = '182' WHERE `VariableID` = '14063';
UPDATE `world_quest_update` SET `EventID` = '183' WHERE `VariableID` = '14246';
UPDATE `world_quest_update` SET `EventID` = '184' WHERE `VariableID` = '14060';
UPDATE `world_quest_update` SET `EventID` = '185' WHERE `VariableID` = '14062';
UPDATE `world_quest_update` SET `EventID` = '186' WHERE `VariableID` = '14243';
UPDATE `world_quest_update` SET `EventID` = '187' WHERE `VariableID` = '14065';
UPDATE `world_quest_update` SET `EventID` = '188' WHERE `VariableID` = '14061';
UPDATE `world_quest_update` SET `EventID` = '189' WHERE `VariableID` = '14244';
UPDATE `world_quest_update` SET `EventID` = '190' WHERE `VariableID` = '14247';
UPDATE `world_quest_update` SET `EventID` = '191' WHERE `VariableID` = '14242';
