DROP TABLE IF EXISTS `guild_challenges`;

CREATE TABLE `guild_challenges` (
  `GuildId` int(10) unsigned NOT NULL,
  `ChallengeType` int(1) NOT NULL DEFAULT '0',
  `ChallengeCount` int(1) DEFAULT NULL,
  PRIMARY KEY (`GuildId`,`ChallengeType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
