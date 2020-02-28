DELETE FROM `spell_trigger` WHERE (`spell_id`='195222') AND (`spell_trigger`='213307') AND (`option`='20') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');

DELETE FROM `spell_proc_event` WHERE (`entry`='195222');
INSERT INTO `spell_proc_event` VALUES (195222, 0, 0, 0, 0, 0, 0, 4+16+64+256+65536+262144, 0, 0, 0, 0.1, 1);

INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `comment`) VALUES ('195222', '-195256', 'Stormlash');

UPDATE `spell_target_filter` SET `addcaster`='1' WHERE (`spellId`='207835') AND (`targetId`='30') AND (`option`='13') AND (`param1`='-162701') AND (`param2`='0') AND (`param3`='0');