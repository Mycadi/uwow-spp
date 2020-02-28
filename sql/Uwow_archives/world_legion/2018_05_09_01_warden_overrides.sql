DELETE FROM `warden_overrides` WHERE `checkId`='50';
INSERT INTO `warden_overrides`(`checkId`,`action`,`banTime`,`enabled`) VALUES ( '50','2','0','1');