ALTER TABLE `character_garrison` 
CHANGE COLUMN `CharacterGuid` `guid` BIGINT(20) UNSIGNED NOT NULL FIRST,
CHANGE COLUMN `SiteLevelId` `siteLevelId` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `guid`,
CHANGE COLUMN `followerActivationsRemainingToday` `followerActivationsRemainingToday` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SiteLevelId`,
CHANGE COLUMN `CacheLastUsage` `lastResTaken` INT(11) NOT NULL DEFAULT 0 AFTER `NumFollowerActivationRegenTimestamp`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`guid`, `siteLevelId`);
