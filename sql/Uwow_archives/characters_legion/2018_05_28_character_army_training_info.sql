CREATE TABLE `char_army_training_info` (
`guid`  bigint(20) NOT NULL ,
`opened_berserk`  int(11) NOT NULL DEFAULT 0 ,
`opened_mana_wanted`  int(11) NOT NULL DEFAULT 0 ,
`opened_mage`  int(11) NOT NULL DEFAULT 0 ,
`opened_hp`  tinyint(1) NOT NULL DEFAULT 0 ,
`opened_dmg`  tinyint(1) NOT NULL DEFAULT 0 ,
`opened_fixate`  tinyint(1) NOT NULL DEFAULT 0 ,
`opened_brave`  tinyint(1) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
);

ALTER TABLE `char_army_training_info`
ADD COLUMN `opened_chests`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `opened_brave`;

RENAME TABLE `char_army_training_info` TO `character_army_training_info`;
TRUNCATE `character_army_training_info`;
