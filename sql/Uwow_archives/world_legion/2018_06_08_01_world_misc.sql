delete from eventobject_template where entry in (404, 405);
INSERT INTO `eventobject_template` (`entry`, `name`, `radius`, `SpellID`, `WorldSafeLocID`, `ScriptName`) VALUES
(404, 'Tomb of Sargeras - Enter', 8, 0, 5889, ''),
(405, 'Tomb of Sargeras - Exit', 5, 0, 5890, '');

delete from eventobject where id in (404, 405);
INSERT INTO `eventobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(404, 1220, 8524, 8524, 1, 1, '', -537.12, 2429.87, 106.16, 0),
(405, 1676, 8524, 8524, 245760, 1, '', 5828.2, -795.736, 2954.49, 0);

delete from game_graveyard_zone where ghost_zone = 8524;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
(5745, 8524, 0);