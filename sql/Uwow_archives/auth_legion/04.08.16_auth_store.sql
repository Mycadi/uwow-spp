/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : auth

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2016-08-05 23:40:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for store_categories
-- ----------------------------
DROP TABLE IF EXISTS `store_categories`;
CREATE TABLE `store_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL,
  `realm` json NOT NULL,
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store_history
-- ----------------------------
DROP TABLE IF EXISTS `store_history`;
CREATE TABLE `store_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `realm` int(11) unsigned NOT NULL,
  `account` int(11) unsigned NOT NULL,
  `char_guid` int(11) unsigned NOT NULL,
  `item_guid` int(11) unsigned DEFAULT NULL,
  `product` int(11) unsigned NOT NULL,
  `cost` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dt_buy` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_return` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store_categories_locales
-- ----------------------------
DROP TABLE IF EXISTS `store_categories_locales`;
CREATE TABLE `store_categories_locales` (
  `category` int(11) unsigned NOT NULL,
  `en` varchar(255) NOT NULL DEFAULT '',
  `ko` varchar(255) NOT NULL DEFAULT '',
  `fr` varchar(255) NOT NULL DEFAULT '',
  `de` varchar(255) NOT NULL DEFAULT '',
  `cn` varchar(255) NOT NULL DEFAULT '',
  `tw` varchar(255) NOT NULL DEFAULT '',
  `es` varchar(255) NOT NULL DEFAULT '',
  `em` varchar(255) NOT NULL DEFAULT '',
  `ru` varchar(255) NOT NULL DEFAULT '',
  `pt` varchar(255) NOT NULL DEFAULT '',
  `it` varchar(255) NOT NULL DEFAULT '',
  `ua` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store_products
-- ----------------------------
DROP TABLE IF EXISTS `store_products`;
CREATE TABLE `store_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) unsigned NOT NULL,
  `product` int(11) unsigned NOT NULL,
  `cost` int(11) unsigned NOT NULL DEFAULT '0',
  `return` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product`)
) ENGINE=InnoDB AUTO_INCREMENT=3227 DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;


CREATE TABLE `store_price_realms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `realm` int(11) unsigned NOT NULL DEFAULT '0',
  `rate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



ALTER TABLE `store_products`
CHANGE COLUMN `cost` `token`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `product`,
ADD COLUMN `karma`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `token`;

ALTER TABLE `store_history`
CHANGE COLUMN `cost` `token`  int(11) UNSIGNED NOT NULL AFTER `product`,
ADD COLUMN `karma`  int(1) UNSIGNED NOT NULL AFTER `token`,
ADD COLUMN `bnet_account`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `account`;


-- status = 0 - куплена, 1 - вернули, 2 - удалили

CREATE TABLE `store_discounts` (
  `id` int(11) unsigned NOT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `rate` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `store_products_locales` (
  `product` int(11) unsigned NOT NULL,
  `en` varchar(255) NOT NULL DEFAULT '',
  `ko` varchar(255) NOT NULL DEFAULT '',
  `fr` varchar(255) NOT NULL DEFAULT '',
  `de` varchar(255) NOT NULL DEFAULT '',
  `cn` varchar(255) NOT NULL DEFAULT '',
  `tw` varchar(255) NOT NULL DEFAULT '',
  `es` varchar(255) NOT NULL DEFAULT '',
  `em` varchar(255) NOT NULL DEFAULT '',
  `ru` varchar(255) NOT NULL DEFAULT '',
  `pt` varchar(255) NOT NULL DEFAULT '',
  `it` varchar(255) NOT NULL DEFAULT '',
  `ua` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `store_categories`
ADD COLUMN `type`  enum('0','1','2','3') NOT NULL DEFAULT '0' AFTER `realm`;

ALTER TABLE `store_categories`
MODIFY COLUMN `type`  enum('0','1','2','3','4','5') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' AFTER `realm`,
ADD COLUMN `return`  tinyint(1) UNSIGNED NOT NULL DEFAULT 1 AFTER `type`;

ALTER TABLE `store_products`
DROP COLUMN `return`;

ALTER TABLE `store_categories_locales`
MODIFY COLUMN `category`  int(11) UNSIGNED NOT NULL DEFAULT 0 FIRST ,
ADD PRIMARY KEY (`category`);

ALTER TABLE `store_products_locales`
MODIFY COLUMN `product`  int(11) UNSIGNED NOT NULL DEFAULT 0 FIRST ,
ADD PRIMARY KEY (`product`);

ALTER TABLE `store_history`
MODIFY COLUMN `type`  enum('cp','game') NOT NULL DEFAULT 'game' AFTER `status`,
ADD COLUMN `return`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 AFTER `karma`;