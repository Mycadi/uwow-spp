ALTER TABLE `quest_template_addon`   
  ADD COLUMN `RewardMailTitle` VARCHAR(250) DEFAULT '' NOT NULL AFTER `RewardMailDelay`;
