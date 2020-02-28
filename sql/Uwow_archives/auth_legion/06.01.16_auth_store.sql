
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for store_categories
-- ----------------------------
DROP TABLE IF EXISTS `store_categories`;
CREATE TABLE `store_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL,
  `realm1` json DEFAULT NULL,
  `type` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `return` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `index` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230121 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for store_categories_locales
-- ----------------------------
DROP TABLE IF EXISTS `store_categories_locales`;
CREATE TABLE `store_categories_locales` (
  `category` int(11) unsigned NOT NULL DEFAULT '0',
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
  `ua` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store_discounts
-- ----------------------------
DROP TABLE IF EXISTS `store_discounts`;
CREATE TABLE `store_discounts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `rate` float(5,0) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store_favorites
-- ----------------------------
DROP TABLE IF EXISTS `store_favorites`;
CREATE TABLE `store_favorites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product` int(11) unsigned NOT NULL DEFAULT '0',
  `acid` int(11) unsigned NOT NULL,
  `bacid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index` (`product`,`acid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store_history
-- ----------------------------
DROP TABLE IF EXISTS `store_history`;
CREATE TABLE `store_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `realm` int(11) unsigned NOT NULL,
  `account` int(11) unsigned NOT NULL,
  `bnet_account` int(11) unsigned NOT NULL DEFAULT '0',
  `char_guid` int(11) unsigned NOT NULL,
  `item_guid` int(11) unsigned DEFAULT NULL,
  `product` int(11) unsigned NOT NULL,
  `token` int(11) unsigned NOT NULL,
  `karma` int(1) unsigned NOT NULL,
  `return` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` enum('cp','game') NOT NULL DEFAULT 'game',
  `dt_buy` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_return` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store_price_realms
-- ----------------------------
DROP TABLE IF EXISTS `store_price_realms`;
CREATE TABLE `store_price_realms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `realm` int(11) unsigned NOT NULL DEFAULT '0',
  `rate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store_price_realms
-- ----------------------------
INSERT INTO `store_price_realms` VALUES ('1', '2', '1');
INSERT INTO `store_price_realms` VALUES ('2', '4', '2');

-- ----------------------------
-- Table structure for store_product_realms
-- ----------------------------
DROP TABLE IF EXISTS `store_product_realms`;
CREATE TABLE `store_product_realms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product` int(11) unsigned NOT NULL DEFAULT '0',
  `realm` int(11) unsigned NOT NULL DEFAULT '0',
  `include` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_realm` (`product`,`realm`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store_products
-- ----------------------------
DROP TABLE IF EXISTS `store_products`;
CREATE TABLE `store_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) unsigned NOT NULL DEFAULT '0',
  `product` int(11) unsigned NOT NULL,
  `icon` text NOT NULL,
  `quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `token` int(11) unsigned NOT NULL DEFAULT '0',
  `karma` int(11) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product`)
) ENGINE=InnoDB AUTO_INCREMENT=1463 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store_products_locales
-- ----------------------------
DROP TABLE IF EXISTS `store_products_locales`;
CREATE TABLE `store_products_locales` (
  `product` int(11) unsigned NOT NULL DEFAULT '0',
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
  `ua` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for store_rating
-- ----------------------------
DROP TABLE IF EXISTS `store_rating`;
CREATE TABLE `store_rating` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product` int(11) unsigned NOT NULL DEFAULT '0',
  `rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `acid` int(11) unsigned NOT NULL,
  `bacid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index` (`product`,`acid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store_statistics
-- ----------------------------
DROP TABLE IF EXISTS `store_statistics`;
CREATE TABLE `store_statistics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product` int(11) unsigned NOT NULL DEFAULT '0',
  `realm` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_value` int(11) unsigned NOT NULL DEFAULT '0',
  `buy` int(11) unsigned NOT NULL DEFAULT '0',
  `return` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS=1;
