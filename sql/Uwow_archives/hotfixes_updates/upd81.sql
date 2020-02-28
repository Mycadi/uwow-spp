ALTER TABLE `broadcast_text` 
CHANGE COLUMN `MaleText` `Text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `ID`,
CHANGE COLUMN `FemaleText` `Text1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `Text`,
CHANGE COLUMN `Language` `LanguageID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `EmotesId`,
CHANGE COLUMN `Type` `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LanguageID`,
CHANGE COLUMN `PlayerConditionID` `ConditionID` int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`,
CHANGE COLUMN `SoundID1` `SoundEntriesID1` int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ConditionID`,
CHANGE COLUMN `SoundID2` `SoundEntriesID2` int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SoundEntriesID1`

ALTER TABLE `broadcast_text_locale` 
CHANGE COLUMN `MaleText_lang` `Text_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `locale`,
CHANGE COLUMN `FemaleText_lang` `Text1_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `Text_lang`;

ALTER TABLE `creature_x_contribution` 
ADD COLUMN `CreatureId` int(10) NOT NULL DEFAULT 0 AFTER `ContributionID`;
