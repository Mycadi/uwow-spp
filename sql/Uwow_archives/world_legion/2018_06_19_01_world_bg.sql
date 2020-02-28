ALTER TABLE `battleground_template` 
MODIFY COLUMN `Comment` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `MinPlayersPerTeam`;

INSERT INTO `battleground_template` VALUES (847, 5821, 5822, 1, '', 0, 'Brawl Battleground Arathi Basin Winter');
