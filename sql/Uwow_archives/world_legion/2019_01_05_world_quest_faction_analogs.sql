/*
Navicat MySQL Data Transfer

Source Server         : LEGION
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : legion735_world

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-01-05 22:37:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for world_quest_faction_analogs
-- ----------------------------
DROP TABLE IF EXISTS `world_quest_faction_analogs`;
CREATE TABLE `world_quest_faction_analogs` (
  `alliance_quest` int(11) NOT NULL,
  `horde_quest` int(11) NOT NULL,
  PRIMARY KEY (`alliance_quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `world_quest_template`
ADD COLUMN `CurrencyID_A`  mediumint(6) NOT NULL DEFAULT 0 AFTER `CurrencyID`,
ADD COLUMN `CurrencyID_H`  mediumint(6) NOT NULL DEFAULT 0 AFTER `CurrencyID_A`;
