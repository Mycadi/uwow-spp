UPDATE `pet_stats` SET `spd`='1' WHERE (`entry`='55659');
UPDATE `pet_stats` SET `spd`='1' WHERE (`entry`='99737');

INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('3411', '30213');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('3411', '115625');

INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('3411', '3');

UPDATE `spell_pet_auras` SET `createdspell`='-111896' WHERE (`petEntry`='1863') AND (`spellId`='212999') AND (`option`='0') AND (`target`='0') AND (`bp0`='0') AND (`aura`='212618') AND (`createdspell`='0');