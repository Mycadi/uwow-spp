ALTER IGNORE TABLE `creature_text`   
  CHANGE `Text` `Text` TEXT CHARSET utf8 COLLATE utf8_general_ci NOT NULL,
  CHANGE `Language` `Language` TINYINT(3) UNSIGNED DEFAULT 0 NULL,
  ADD COLUMN `MinTimer` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `BroadcastTextID`,
  ADD COLUMN `MaxTimer` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `MinTimer`, 
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`Entry`, `Text`(250));

DELETE ct FROM creature_text AS ct, creature_template AS crt WHERE ct.Entry = crt.entry AND crt.AIName = '' AND crt.ScriptName = '';

DROP TABLE `locales_creature_text`;

ALTER TABLE `creature_text`   
  ADD COLUMN `SpellID` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `MaxTimer`;
