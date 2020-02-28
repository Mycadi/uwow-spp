CREATE TABLE `vehicle_attachment_offset`(  
  `entry` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `seat_id` TINYINT(4) NOT NULL DEFAULT 0,
  `offsetX` FLOAT NOT NULL DEFAULT 0,
  `offsetY` FLOAT NOT NULL DEFAULT 0,
  `offsetZ` FLOAT NOT NULL DEFAULT 0,
  `offsetO` FLOAT NOT NULL DEFAULT 0,
  `description` VARCHAR(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`, `seat_id`)
);

DELETE FROM `vehicle_attachment_offset` WHERE `entry` IN (55305, 68233, 54588, 68239, 68232, 68238, 55306);
REPLACE INTO `vehicle_attachment_offset` (`entry`, `seat_id`, `description`, `offsetX`, `offsetY`, `offsetZ`, `offsetO`) VALUES
(55305, 0, '55305 - 55305', 0.7, 0, 0, 0), -- 55305 - 55305
(68233, 0, '68233 - 68233', 0.04109013, 0.001629773, 1.857206, 0), -- 68233 - 68233
(54588, 0, '54588 - 54588', 0, 0, 0, 0), -- 54588 - 54588
(68239, 0, '68239 - 68239', 0.1052765, 0.001629769, 1.723115, 0), -- 68239 - 68239
(68232, 0, '68232 - 68232', -0.03307962, 0.001629769, 1.848913, 0), -- 68232 - 68232
(68238, 0, '68238 - 68238', 0.1705861, 0.001629769, 1.96767, 0), -- 68238 - 68238
(55306, 0, '55306 - 55306', -0.1, 0, 0.5, 0); -- 55306 - 55306
