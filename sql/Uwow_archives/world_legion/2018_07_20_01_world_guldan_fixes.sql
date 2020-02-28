delete from spell_linked_spell where spell_trigger in (206503);

delete from spell_script_names where spell_id in (221603,210339,210296,217830);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(221603, 'spell_guldan_flames_of_sargeras'),
(210339, 'spell_guldan_players_buff_cooldown'),
(210296, 'spell_guldan_players_buff_cooldown'),
(217830, 'spell_guldan_players_buff_cooldown');