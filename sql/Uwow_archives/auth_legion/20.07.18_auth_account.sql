ALTER TABLE `account`   
  ADD COLUMN `hwid` BIGINT(20) UNSIGNED DEFAULT 0 NOT NULL AFTER `coins`, 
  ADD  INDEX `hwid` (`hwid`);
