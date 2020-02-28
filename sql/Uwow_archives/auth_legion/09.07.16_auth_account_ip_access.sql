CREATE TABLE `account_ip_access` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_ip` (`pid`,`ip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

ALTER TABLE `battlenet_accounts`
ADD COLUMN `access_ip`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `last_ip`;