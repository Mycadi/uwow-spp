

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account_rates
-- ----------------------------
DROP TABLE IF EXISTS `account_rates`;
CREATE TABLE `account_rates` (
  `account` int(11) NOT NULL DEFAULT '0',
  `bnet_account` int(11) unsigned NOT NULL DEFAULT '0',
  `realm` int(11) unsigned NOT NULL DEFAULT '0',
  `rate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_rates
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
