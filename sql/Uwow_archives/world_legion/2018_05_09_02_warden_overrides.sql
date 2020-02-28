DELETE FROM `warden_overrides` WHERE `checkId`='51';
INSERT INTO `warden_overrides`(`checkId`,`action`,`banTime`,`enabled`) VALUES ( '51','0','-1','1');