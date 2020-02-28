ALTER TABLE `character_reputation` ADD INDEX `standing` (`standing`);
RENAME TABLE character_reputation TO character_reputation_back;

CREATE TABLE character_reputation LIKE character_reputation_back;
insert into character_reputation select * from character_reputation_back where standing != 0;
-- DROP TABLE character_reputation_back;

-- DELETE FROM character_reputation WHERE standing = 0;

-- correct reputation cap
UPDATE `character_reputation` SET `standing` = '42000' WHERE `standing` > '42000';

UPDATE `characters` SET `watchedFaction` = '0';
ALTER TABLE `characters` CHANGE `watchedFaction` `watchedFaction` INT(10) DEFAULT -1 NOT NULL;
-- reset watched faction
UPDATE `characters` SET `watchedFaction` = '-1';
