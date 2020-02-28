CREATE TABLE `areatrigger_template_sequence`(
  `entry` INT(10) UNSIGNED NOT NULL,
  `spellId` INT(10) UNSIGNED NOT NULL,
  `oncreated` BOOL NOT NULL DEFAULT 0,
  `entered` BOOL NOT NULL DEFAULT 0,
  `animationid` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `timer1` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `entered1` BOOL NOT NULL DEFAULT 0,
  `animationid1` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `timer2` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `entered2` BOOL NOT NULL DEFAULT 0,
  `animationid2` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `cycle` BOOL NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `spellId`)
);
INSERT INTO `areatrigger_template_sequence` (`entry`, `spellId`, `oncreated`, `animationid`, `timer1`, `animationid1`, `timer2`, `animationid2`, `cycle`) VALUES ('11284', '236357', '1', '153', '54000', '153', '54000', '155', '1');

