CREATE TABLE `account_progress`(  
  `account` INT(10) UNSIGNED NOT NULL,
  `totaltime` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `leveltime` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`account`),
  INDEX `account` (`account`)
) ENGINE=INNODB CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT IGNORE INTO account_progress SELECT account, 0, 0 FROM characters WHERE account != 0 GROUP BY account;

UPDATE account_progress ap 
INNER JOIN (SELECT account, SUM(`totaltime`) idcount FROM characters WHERE account != 0 GROUP BY account) AS iebb ON ap.account = iebb.account
SET ap.totaltime =  iebb.idcount;

UPDATE account_progress ap 
INNER JOIN (SELECT account, SUM(`leveltime`) idcount FROM characters WHERE account != 0 GROUP BY account) AS iebb ON ap.account = iebb.account
SET ap.leveltime =  iebb.idcount;

DROP TABLE account_share;
CREATE TABLE `account_share` (
  `account` bigint(20) unsigned NOT NULL,
  `bonus1` tinyint(1) NOT NULL DEFAULT '0',
  `bonus2` tinyint(1) NOT NULL DEFAULT '0',
  `bonus3` tinyint(1) NOT NULL DEFAULT '0',
  `bonus4` tinyint(1) NOT NULL DEFAULT '0',
  `bonus5` tinyint(1) NOT NULL DEFAULT '0',
  `bonus6` tinyint(1) NOT NULL DEFAULT '0',
  `bonus7` tinyint(1) NOT NULL DEFAULT '0',
  `bonus8` tinyint(1) NOT NULL DEFAULT '0',
  `bonus9` tinyint(1) NOT NULL DEFAULT '0',
  `bonus10` tinyint(1) NOT NULL DEFAULT '0',
  `bonus11` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
