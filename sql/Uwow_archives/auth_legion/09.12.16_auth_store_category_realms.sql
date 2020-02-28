-- Õ≈ À»“‹ ¬ À¿…¬!

DROP TABLE IF EXISTS `store_category_realms`;
CREATE TABLE `store_category_realms` (
  `category` int(11) NOT NULL DEFAULT '0',
  `realm` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `category_realm` (`category`,`realm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

RENAME TABLE `store_products_locales` TO `store_product_locales`;
RENAME TABLE `store_categories_locales` TO `store_category_locales`;