update spell_target_filter set param2 = -236459 where spellid = 235923 and `option` = 1;

delete from spell_target_filter where spellId in (236454,236455) and `option` = 1;
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(236454, 7, 1, -235924, -238442, -236131, 0, 0, 1, 0, 0, 0, 0, 0, 'SoulBind - Exclude Aura'),
(236454, 7, 1, -236138, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'SoulBind - Exclude Aura'),
(236455, 7, 1, -235924, -238442, -236131, 0, 0, 1, 0, 0, 0, 0, 0, 'SoulBind - Exclude Aura'),
(236455, 7, 1, -236138, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'SoulBind - Exclude Aura');

update areatrigger_actions set hasaura = -236011 where entry = 9736 and id = 0;

delete from spell_dummy_trigger where spell_id in (236454,236455);

delete from spell_script_names where spell_id in (245611,245612);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(245611, 'spell_tos_soulbind_visual_finder'),
(245612, 'spell_tos_soulbind_visual_finder');
