/*
Navicat MySQL Data Transfer

Source Server         : LEGION
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : legion_characters

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-11-24 23:31:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for character_chat_logos
-- ----------------------------
DROP TABLE IF EXISTS `character_chat_logos`;
CREATE TABLE `character_chat_logos` (
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `buyed_morphs` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`buyed_morphs`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
