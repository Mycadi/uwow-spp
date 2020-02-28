
DROP TABLE IF EXISTS `battlepay_group`;
CREATE TABLE `battlepay_group` (
  `GroupID` int(11) unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int(11) unsigned NOT NULL DEFAULT '0',
  `DisplayType` smallint(3) unsigned NOT NULL DEFAULT '0',
  `Ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkInt` int(11) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `IsAvailableDescription` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert  into `battlepay_group`(`GroupID`,`IconFileDataID`,`DisplayType`,`Ordering`,`UnkInt`,`Name`,`IsAvailableDescription`) values (13,656556,0,2,0,'Питомцы','');
insert  into `battlepay_group`(`GroupID`,`IconFileDataID`,`DisplayType`,`Ordering`,`UnkInt`,`Name`,`IsAvailableDescription`) values (34,132596,2,60,1,'Комплекты','Нет доступных комплектов.');

DROP TABLE IF EXISTS `battlepay_product`;
CREATE TABLE `battlepay_product` (
  `ProductID` int(11) unsigned NOT NULL,
  `Flags` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkInt1` int(11) unsigned NOT NULL DEFAULT '0',
  `DisplayId` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemId` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkInt4` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkInt5` int(11) unsigned NOT NULL DEFAULT '0',
  `Type` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkBits` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkBit` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkString` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `battlepay_product_display_info`;
CREATE TABLE `battlepay_product_display_info` (
  `ProductID` int(11) unsigned NOT NULL,
  `Name1` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `Name2` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `Name3` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `Name4` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `Type` smallint(3) unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayInfoID` int(11) unsigned NOT NULL DEFAULT '0',
  `FileDataID` int(11) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(3) unsigned NOT NULL DEFAULT '0',
  `UnkInt1` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkInt2` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkInt3` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert  into `battlepay_product_display_info`(`ProductID`,`Name1`,`Name2`,`Name3`,`Name4`,`Type`,`CreatureDisplayInfoID`,`FileDataID`,`Flags`,`UnkInt1`,`UnkInt2`,`UnkInt3`) values (50,'Коро\'Тышка',NULL,'Коро\'Тышка замораживает противников и весело смеется.',NULL,0,134514,76,0,0,0,0);
insert  into `battlepay_product_display_info`(`ProductID`,`Name1`,`Name2`,`Name3`,`Name4`,`Type`,`CreatureDisplayInfoID`,`FileDataID`,`Flags`,`UnkInt1`,`UnkInt2`,`UnkInt3`) values (147,'Смена внешности','Смена внешности','Изменить внешний вид персонажа (черты лица, цвет кожи, пол, но не расу). Дополнительная функция смены имени включена.',NULL,0,1126582,10,0,0,0,0);
insert  into `battlepay_product_display_info`(`ProductID`,`Name1`,`Name2`,`Name3`,`Name4`,`Type`,`CreatureDisplayInfoID`,`FileDataID`,`Flags`,`UnkInt1`,`UnkInt2`,`UnkInt3`) values (148,'Смена имени','Смена имени','Сменить имя персонажа.',NULL,0,1126584,10,0,0,0,0);


DROP TABLE IF EXISTS `battlepay_product_info`;
CREATE TABLE `battlepay_product_info` (
  `ProductID` int(11) unsigned NOT NULL,
  `NormalPriceFixedPoint` bigint(20) unsigned NOT NULL DEFAULT '0',
  `CurrentPriceFixedPoint` bigint(20) unsigned NOT NULL DEFAULT '0',
  `UnkInt2` int(11) unsigned NOT NULL DEFAULT '0',
  `ChoiceType` int(11) unsigned NOT NULL DEFAULT '0',
  `ProductIDs` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `UnkInts` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert  into `battlepay_product_info`(`ProductID`,`NormalPriceFixedPoint`,`CurrentPriceFixedPoint`,`UnkInt2`,`ChoiceType`,`ProductIDs`,`UnkInts`) values (50,555000,555000,47,2,'260',NULL);

DROP TABLE IF EXISTS `battlepay_product_items`;
CREATE TABLE `battlepay_product_items` (
  `ProductID` int(11) unsigned NOT NULL,
  `ID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `Quantity` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkInt1` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkInt2` int(11) unsigned NOT NULL DEFAULT '0',
  `UnkByte` int(11) unsigned NOT NULL DEFAULT '0',
  `HasPet` int(11) unsigned NOT NULL DEFAULT '0',
  `PetResult` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ProductID`,`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `battlepay_product_visuals`;
CREATE TABLE `battlepay_product_visuals` (
  `ProductID` int(11) unsigned NOT NULL,
  `DisplayId` int(11) unsigned NOT NULL DEFAULT '0',
  `IconFileDataId` int(11) unsigned NOT NULL DEFAULT '0',
  `ProductName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert  into `battlepay_product_visuals`(`ProductID`,`DisplayId`,`IconFileDataId`,`ProductName`) values (50,30507,76,'Коро\'Тышка');

DROP TABLE IF EXISTS `battlepay_shop`;
CREATE TABLE `battlepay_shop` (
  `EntryID` int(11) unsigned NOT NULL,
  `GroupID` int(11) unsigned NOT NULL,
  `ProductID` int(11) unsigned NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  `Flags` int(11) unsigned NOT NULL DEFAULT '0',
  `BannerType` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`EntryID`),
  KEY `with_battlepay_group` (`GroupID`),
  KEY `with_battlepay_product` (`ProductID`),
  CONSTRAINT `battlepay_shop_ibfk_1` FOREIGN KEY (`GroupID`) REFERENCES `battlepay_group` (`GroupID`),
  CONSTRAINT `battlepay_shop_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `battlepay_product_display_info` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert  into `battlepay_shop`(`EntryID`,`GroupID`,`ProductID`,`Ordering`,`Flags`,`BannerType`) values (6,13,50,96,0,0);

