
DROP TABLE IF EXISTS `battlepay_display_info_visuals`;
CREATE TABLE `battlepay_display_info_visuals`  (
  `DisplayInfoId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DisplayId` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `VisualId` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ProductName` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE INDEX `DisplayInfoId`(`DisplayInfoId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 854 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS `battlepay_display_info`;
CREATE TABLE `battlepay_display_info`  (
  `DisplayInfoId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `CreatureDisplayInfoID` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `FileDataID` int(11) UNSIGNED NULL DEFAULT NULL,
  `Flags` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `Name1` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name2` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name3` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name4` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE INDEX `DisplayInfoId`(`DisplayInfoId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 854 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS `battlepay_display_info_locales`;
CREATE TABLE `battlepay_display_info_locales`  (
  `Id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Locale` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Name1` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `Name2` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `Name3` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `Name4` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`Id`, `Locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS `battlepay_product`;
CREATE TABLE `battlepay_product`  (
  `ProductID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NormalPriceFixedPoint` bigint(20) UNSIGNED NOT NULL,
  `CurrentPriceFixedPoint` bigint(20) UNSIGNED NOT NULL,
  `Type` tinyint(3) UNSIGNED NOT NULL,
  `ChoiceType` tinyint(3) UNSIGNED NOT NULL,
  `Flags` int(11) UNSIGNED NOT NULL,
  `DisplayInfoID` int(11) UNSIGNED NOT NULL,
  `ScriptName` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ClassMask` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `WebsiteType` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ProductID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 853 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS `battlepay_product_group`;
CREATE TABLE `battlepay_product_group`  (
  `GroupID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IconFileDataID` int(11) NOT NULL,
  `DisplayType` tinyint(3) UNSIGNED NOT NULL,
  `Ordering` int(11) NOT NULL,
  PRIMARY KEY (`GroupID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS `battlepay_product_group_locales`;
CREATE TABLE `battlepay_product_group_locales`  (
  `GroupID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Locale` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`GroupID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS `battlepay_product_item`;
CREATE TABLE `battlepay_product_item`  (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ProductID` int(11) UNSIGNED NOT NULL,
  `ItemID` int(11) UNSIGNED NOT NULL,
  `Quantity` int(11) UNSIGNED NOT NULL,
  `DisplayID` int(11) NULL DEFAULT NULL,
  `PetResult` tinyint(2) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 874 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS `battlepay_shop_entry`;
CREATE TABLE `battlepay_shop_entry`  (
  `EntryID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) UNSIGNED NOT NULL,
  `ProductID` int(11) UNSIGNED NOT NULL,
  `Ordering` int(11) NOT NULL,
  `Flags` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `BannerType` tinyint(3) UNSIGNED NOT NULL,
  `DisplayInfoID` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`EntryID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 902 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
