ALTER TABLE `world_quest_update`   
  CHANGE `AreaID` `AreaID` VARCHAR(250) DEFAULT '' NOT NULL;

UPDATE `world_quest_update` SET AreaID = '' WHERE AreaID = '0';
UPDATE `world_quest_update` SET `AreaID` = '7349 ' WHERE `QuestID` = '41564' AND `Timer` = '259200' AND `VariableID` = '13402';
UPDATE `world_quest_update` SET `AreaID` = '7355 ' WHERE `QuestID` = '41669' AND `Timer` = '86400' AND `VariableID` = '13413';
UPDATE `world_quest_update` SET `AreaID` = '7502 ' WHERE `QuestID` = '41644' AND `Timer` = '86400' AND `VariableID` = '13418';
UPDATE `world_quest_update` SET `AreaID` = '7502 ' WHERE `QuestID` = '41656' AND `Timer` = '86400' AND `VariableID` = '13417';
UPDATE `world_quest_update` SET `AreaID` = '7502 ' WHERE `QuestID` = '41650' AND `Timer` = '86400' AND `VariableID` = '13416';
UPDATE `world_quest_update` SET `AreaID` = '7502 ' WHERE `QuestID` = '41662' AND `Timer` = '86400' AND `VariableID` = '13415';
UPDATE `world_quest_update` SET `AreaID` = '7502 ' WHERE `QuestID` = '41668' AND `Timer` = '86400' AND `VariableID` = '13414';
UPDATE `world_quest_update` SET `AreaID` = '7502 ' WHERE `QuestID` = '41680' AND `Timer` = '86400' AND `VariableID` = '11323';
UPDATE `world_quest_update` SET `AreaID` = '7502 ' WHERE `QuestID` = '41674' AND `Timer` = '86400' AND `VariableID` = '11317';
UPDATE `world_quest_update` SET `AreaID` = '7502 ' WHERE `QuestID` = '41638' AND `Timer` = '86400' AND `VariableID` = '11281';
UPDATE `world_quest_update` SET `AreaID` = '7541 ' WHERE `QuestID` = '41569' AND `Timer` = '259200' AND `VariableID` = '13408';
UPDATE `world_quest_update` SET `AreaID` = '7725 ' WHERE `QuestID` = '41560' AND `Timer` = '259200' AND `VariableID` = '13410';
UPDATE `world_quest_update` SET `AreaID` = '7728 ' WHERE `QuestID` = '41239' AND `Timer` = '259200' AND `VariableID` = '13412';
UPDATE `world_quest_update` SET `AreaID` = '7801 ' WHERE `QuestID` = '41561' AND `Timer` = '259200' AND `VariableID` = '13411';
UPDATE `world_quest_update` SET `AreaID` = '7803 ' WHERE `QuestID` = '41672' AND `Timer` = '86400' AND `VariableID` = '11315';
UPDATE `world_quest_update` SET `AreaID` = '7844 ' WHERE `QuestID` = '41571' AND `Timer` = '259200' AND `VariableID` = '13407';
UPDATE `world_quest_update` SET `AreaID` = '7917 ' WHERE `QuestID` = '41573' AND `Timer` = '259200' AND `VariableID` = '13406';
UPDATE `world_quest_update` SET `AreaID` = '8147 ' WHERE `QuestID` = '41563' AND `Timer` = '259200' AND `VariableID` = '13401';
UPDATE `world_quest_update` SET `AreaID` = '8193 ' WHERE `QuestID` = '41562' AND `Timer` = '259200' AND `VariableID` = '13400';
UPDATE `world_quest_update` SET `AreaID` = '8233 ' WHERE `QuestID` = '41572' AND `Timer` = '259200' AND `VariableID` = '13405';
UPDATE `world_quest_update` SET `AreaID` = '8303 ' WHERE `QuestID` = '41487' AND `Timer` = '259200' AND `VariableID` = '11137';
UPDATE `world_quest_update` SET `AreaID` = '8303 ' WHERE `QuestID` = '45925' AND `Timer` = '21600' AND `VariableID` = '13004';
UPDATE `world_quest_update` SET `AreaID` = '8322 ' WHERE `QuestID` = '45926' AND `Timer` = '21600' AND `VariableID` = '13004';
UPDATE `world_quest_update` SET `AreaID` = '8332 ' WHERE `QuestID` = '41567' AND `Timer` = '259200' AND `VariableID` = '13404';
UPDATE `world_quest_update` SET `AreaID` = '8332 ' WHERE `QuestID` = '44884' AND `Timer` = '21600' AND `VariableID` = '12765';
UPDATE `world_quest_update` SET `AreaID` = '8365 ' WHERE `QuestID` = '41565' AND `Timer` = '259200' AND `VariableID` = '13403';
UPDATE `world_quest_update` SET `AreaID` = '8393 ' WHERE `QuestID` = '46010' AND `Timer` = '21600' AND `VariableID` = '13005';
UPDATE `world_quest_update` SET `AreaID` = '8510 ' WHERE `QuestID` = '41568' AND `Timer` = '259200' AND `VariableID` = '13409';
UPDATE `world_quest_update` SET `AreaID` = '8586 ' WHERE `QuestID` = '46179' AND `Timer` = '21600' AND `VariableID` = '13005';

UPDATE `quest_template` SET `AreaGroupID` = '0' WHERE `ID` = '45926';

UPDATE `quest_template` SET `AreaGroupID` = '0' WHERE `ID` = '46763';
UPDATE `world_quest_update` SET `AreaID` = '8066 8067 ' WHERE `QuestID` = '46763' AND `Timer` = '21600' AND `VariableID` = '13004';
UPDATE `world_quest_update` SET `AreaID` = '7800 ' WHERE `QuestID` = '46190' AND `Timer` = '21600' AND `VariableID` = '13003';

UPDATE `quest_template` SET `AreaGroupID` = '0' WHERE `ID` = '45924';
UPDATE `world_quest_update` SET `AreaID` = '8365 ' WHERE `QuestID` = '45924' AND `Timer` = '21600' AND `VariableID` = '13004';

UPDATE `world_quest_update` SET `AreaID` = '7364 ' WHERE `QuestID` = '46170' AND `Timer` = '21600' AND `VariableID` = '13002';
