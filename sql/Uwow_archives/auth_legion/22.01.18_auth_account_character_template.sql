DROP TABLE IF EXISTS `account_character_template`;
CREATE TABLE `account_character_template`(
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `account` INT(10) NOT NULL DEFAULT 0,
  `bnet_account` INT(10) NOT NULL DEFAULT 0,
  `level` TINYINT(3) UNSIGNED NOT NULL DEFAULT 100,
  `iLevel` MEDIUMINT(6) NOT NULL DEFAULT 810,
  `money` INT(10) UNSIGNED NOT NULL DEFAULT 100,
  `artifact` BOOL NOT NULL DEFAULT 0,
  `transferId` INT(10) NOT NULL DEFAULT 0,
  `charGuid` INT(10) NOT NULL DEFAULT 0,
  `realm` INT(10) DEFAULT 0 NOT NULL,
  `templateId` INT(10) DEFAULT 0 NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id` (`id`),
  INDEX `account` (`account`),
  INDEX `bnet_account` (`bnet_account`),
  INDEX `transferId` (`transferId`),
  INDEX `charGuid` (`charGuid`),
  INDEX `realm` (`realm`)
);
