ALTER TABLE `character_loot_cooldown`
CHANGE COLUMN `difficultyMask` `difficultyID`  tinyint(3) NOT NULL DEFAULT 0 AFTER `entry`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`guid`, `type`, `entry`, `difficultyID`);
