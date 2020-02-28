DELETE FROM `spell_trigger` WHERE (`spell_id`='118455') AND (`spell_trigger`='118459') AND (`option`='3') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');


DELETE FROM `spell_trigger` WHERE (`spell_id`='234299') AND (`spell_trigger`='853') AND (`option`='4') AND (`bp0`='-5000') AND (`effectmask`='1') AND (`aura`='215661') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='234299') AND (`spell_trigger`='853') AND (`option`='4') AND (`bp0`='-7500') AND (`effectmask`='1') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
UPDATE `spell_proc_event` SET `procFlags`='87056' WHERE (`entry`='234299') AND (`effectmask`='1');