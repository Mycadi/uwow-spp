INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(199329, 15, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Breath of Corruption - Only Victim');

update creature_template set affixstate = 1 where entry in (99922, 101074);