ALTER TABLE `characters`
ADD COLUMN `created_time` INT(10) DEFAULT 0 NOT NULL AFTER `leveltime`,
ADD COLUMN `killPoints` FLOAT DEFAULT 0 NOT NULL AFTER `yesterdayKills`,
CHANGE `power1` `mana` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
CHANGE `specialization1` `specialization` INT(11) NOT NULL;

ALTER TABLE `characters`   
  DROP COLUMN `resettalents_cost`, 
  DROP COLUMN `resettalents_time`, 
  DROP COLUMN `talentTree`, 
  DROP COLUMN `resetspecialization_cost`, 
  DROP COLUMN `resetspecialization_time`, 
  DROP COLUMN `stable_slots`, 
  DROP COLUMN `power2`, 
  DROP COLUMN `power3`, 
  DROP COLUMN `power4`, 
  DROP COLUMN `power5`, 
  DROP COLUMN `power6`, 
  DROP COLUMN `speccount`, 
  DROP COLUMN `specialization2`;
