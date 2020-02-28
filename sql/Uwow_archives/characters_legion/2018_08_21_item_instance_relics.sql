/*
Navicat MySQL Data Transfer

Source Server         : LEGION
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : legion_characters

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-08-21 11:11:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item_instance_relics
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_relics`;
CREATE TABLE `item_instance_relics` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `char_guid` bigint(20) NOT NULL,
  `first_relic` text NOT NULL,
  `second_relic` text NOT NULL,
  `third_relic` text NOT NULL,
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
