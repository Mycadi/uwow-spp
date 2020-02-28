DROP TABLE IF EXISTS `instance`;

TRUNCATE `character_instance`;

ALTER TABLE `character_instance`
  ADD COLUMN `map` SMALLINT(5) UNSIGNED DEFAULT 0 NOT NULL AFTER `permanent`,
  ADD COLUMN `difficulty` TINYINT(3) UNSIGNED DEFAULT 0 NOT NULL AFTER `map`,
  ADD COLUMN `completedEncounters` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `difficulty`,
  ADD COLUMN `data` TINYTEXT NOT NULL AFTER `completedEncounters`,
  ADD COLUMN `Extended` TINYINT(3) UNSIGNED DEFAULT 0 NOT NULL AFTER `data`,
  ADD COLUMN `resetTime` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `Extended`;

TRUNCATE `group_instance`;

ALTER TABLE `group_instance`
  ADD COLUMN `map` SMALLINT(5) UNSIGNED DEFAULT 0 NOT NULL AFTER `permanent`,
  ADD COLUMN `difficulty` TINYINT(3) UNSIGNED DEFAULT 0 NOT NULL AFTER `map`,
  ADD COLUMN `completedEncounters` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `difficulty`,
  ADD COLUMN `data` TINYTEXT NOT NULL AFTER `completedEncounters`,
  ADD COLUMN `resetTime` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `completedEncounters`;
