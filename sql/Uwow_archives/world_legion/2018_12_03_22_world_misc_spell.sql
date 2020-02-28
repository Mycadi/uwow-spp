INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('11781', 'areatrigger_gen_shadow_wave');
UPDATE `areatrigger_actions` SET `actionType`='15' WHERE (`entry`='7329') AND (`customEntry`='11781') AND (`id`='0');
UPDATE `areatrigger_actions` SET `actionType`='15' WHERE (`entry`='7331') AND (`customEntry`='11781') AND (`id`='1');
UPDATE `areatrigger_actions` SET `actionType`='15' WHERE (`entry`='7332') AND (`customEntry`='11781') AND (`id`='2');
UPDATE `areatrigger_actions` SET `actionType`='15' WHERE (`entry`='7335') AND (`customEntry`='11781') AND (`id`='3');
UPDATE `areatrigger_data` SET `MoveEndDespawn`='0' WHERE (`entry`='7329') AND (`spellId`='215058') AND (`customEntry`='11781');
UPDATE `areatrigger_data` SET `MoveEndDespawn`='0' WHERE (`entry`='7331') AND (`spellId`='215058') AND (`customEntry`='11781');
UPDATE `areatrigger_data` SET `MoveEndDespawn`='0' WHERE (`entry`='7332') AND (`spellId`='215058') AND (`customEntry`='11781');
UPDATE `areatrigger_data` SET `MoveEndDespawn`='0' WHERE (`entry`='7335') AND (`spellId`='215058') AND (`customEntry`='11781');
UPDATE `areatrigger_template` SET `Distance`='15' WHERE (`entry`='7329') AND (`spellId`='215058') AND (`customEntry`='11781');
UPDATE `areatrigger_template` SET `Distance`='15' WHERE (`entry`='7331') AND (`spellId`='215058') AND (`customEntry`='11781');
UPDATE `areatrigger_template` SET `Distance`='15' WHERE (`entry`='7332') AND (`spellId`='215058') AND (`customEntry`='11781');
UPDATE `areatrigger_template` SET `Distance`='15' WHERE (`entry`='7335') AND (`spellId`='215058') AND (`customEntry`='11781');
UPDATE `areatrigger_actions` SET `maxCharges`='0' WHERE (`entry`='7329') AND (`customEntry`='11781') AND (`id`='0');
UPDATE `areatrigger_actions` SET `maxCharges`='0' WHERE (`entry`='7331') AND (`customEntry`='11781') AND (`id`='1');
UPDATE `areatrigger_actions` SET `maxCharges`='0' WHERE (`entry`='7332') AND (`customEntry`='11781') AND (`id`='2');
UPDATE `areatrigger_actions` SET `maxCharges`='0' WHERE (`entry`='7335') AND (`customEntry`='11781') AND (`id`='3');









