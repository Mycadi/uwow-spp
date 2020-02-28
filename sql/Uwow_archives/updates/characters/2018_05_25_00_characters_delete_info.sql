ALTER TABLE `characters` 
ADD COLUMN `LastCharacterUndelete` int(10) UNSIGNED NULL DEFAULT NULL AFTER `deleteDate`;
