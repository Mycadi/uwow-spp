DELETE FROM `world`.`spell_script_names` WHERE (`spell_id` = '45284') and (`ScriptName` = 'spell_sha_lightning_rod');
DELETE FROM `world`.`spell_script_names` WHERE (`spell_id` = '45297') and (`ScriptName` = 'spell_sha_lightning_rod');
DELETE FROM `world`.`spell_script_names` WHERE (`spell_id` = '114074') and (`ScriptName` = 'spell_sha_lightning_rod');
DELETE FROM `world`.`spell_script_names` WHERE (`spell_id` = '114738') and (`ScriptName` = 'spell_sha_lightning_rod');
DELETE FROM `world`.`spell_script_names` WHERE (`spell_id` = '188196') and (`ScriptName` = 'spell_sha_lightning_rod');
DELETE FROM `world`.`spell_script_names` WHERE (`spell_id` = '188443') and (`ScriptName` = 'spell_sha_lightning_rod');
DELETE FROM `world`.`spell_script_names` WHERE (`spell_id` = '197209') and (`ScriptName` = 'spell_sha_lightning_rod');

INSERT INTO `world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES ('45284', 'spell_sha_lightning_rod');
INSERT INTO `world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES ('45297', 'spell_sha_lightning_rod');
INSERT INTO `world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES ('114074', 'spell_sha_lightning_rod');
INSERT INTO `world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES ('114738', 'spell_sha_lightning_rod');
INSERT INTO `world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES ('188196', 'spell_sha_lightning_rod');
INSERT INTO `world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES ('188443', 'spell_sha_lightning_rod');

DELETE FROM `world`.`quest_poi_points` WHERE (`QuestID` = '62') and (`Idx1` = '1') and (`Idx2` = '0');
INSERT INTO `world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES ('62', '1', '0', '-9818', '130', '23877');