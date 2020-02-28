DELETE FROM `warden_overrides` WHERE `checkId`='51';
INSERT INTO `warden_overrides`(`checkId`,`action`,`banTime`,`enabled`) VALUES ( '51','2','2592000','1');
DELETE FROM `warden_overrides` WHERE `checkId`='53';
INSERT INTO `warden_overrides`(`checkId`,`action`,`banTime`,`enabled`) VALUES ( '53','4','2592000','1');