REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('192190', 'spell_gen_create_artefact');

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `optionNPC`, `option_text`, `option_id`, `npcflag_req`, `npcflag_req2`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionBroadcastTextID`, `BoxBroadcastTextID`) VALUES
(18747, 0, 31, 'Покажи, какие задания у тебя подготовлены к выполнению.', 24, 1, 32, 0, 0, 0, 0, '', 95541, 0);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `optionNPC`, `option_text`, `option_id`, `npcflag_req`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, npcflag_req2) VALUES
(0, 21, 31, 'Покажи, какие задания у тебя подготовлены к выполнению.', 24, 1, 0, 0, 0, 0, '', 85296, 0, 32);