CREATE TABLE `spell_scene_event`(  
  `MiscValue` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `Event` VARCHAR(50) NOT NULL DEFAULT '',
  `trigerSpell` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `MonsterCredit` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`MiscValue`, `Event`)
);
ALTER TABLE `spell_scene_event`   
  ADD COLUMN `comment` VARCHAR(50) DEFAULT '' NOT NULL AFTER `MonsterCredit`;

insert into `spell_scene_event` (SELECT MiscValue,"",trigerSpell,MonsterCredit,`comment` FROM `spell_scene` WHERE trigerSpell !=0 OR MonsterCredit !=0);

ALTER TABLE `spell_scene`   
  DROP COLUMN `trigerSpell`, 
  DROP COLUMN `MonsterCredit`;
