
ALTER TABLE `gameobject_template`
 	ADD COLUMN `MinGold` INT(11) NOT NULL DEFAULT '0' AFTER `IgnoreDynLos`;

ALTER TABLE `gameobject_template`
	ADD COLUMN `MaxGold` INT(11) NOT NULL DEFAULT '0' AFTER `MinGold`;