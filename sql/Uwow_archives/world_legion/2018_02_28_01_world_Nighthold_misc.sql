delete from spell_target_filter where spellId in (206921,206936);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(206921, 16, 3, 0, 16, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Iceburst - Only Players target'),
(206936, 16, 3, 0, 16, 0, 0, 0, 15, 0, 0, 0, 0, 0, 'Icy Ejection - Only Players target');