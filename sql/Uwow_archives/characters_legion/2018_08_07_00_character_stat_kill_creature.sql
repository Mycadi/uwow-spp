CREATE TABLE `character_stat_kill_creature`(  
  `guid` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `entry` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `count` INT(10) UNSIGNED DEFAULT 0,
  `point` FLOAT DEFAULT 0 NOT NULL,
  PRIMARY KEY (`guid`, `entry`),
  INDEX `guid` (`guid`),
  INDEX `entry` (`entry`)
);
