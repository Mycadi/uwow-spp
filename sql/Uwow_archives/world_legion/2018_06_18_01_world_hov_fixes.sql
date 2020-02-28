delete from areatrigger_actions where entry = 5040;
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(5040, 9758, 0, 1, 15, 4194312, 193743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aegis of Aggramar - Apply'),
(5040, 9758, 1, 42, 1, 9, 193743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aegis of Aggramar - Remove');

delete from areatrigger_scripts where entry = 9758;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(9758, 'at_skovald_aegis_of_aggramar_absorb');

delete from spell_script_names where spell_id in (193827,193743);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(193743, 'spell_skovald_aegis_absorb');
