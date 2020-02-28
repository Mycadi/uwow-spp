CREATE TABLE `hwid_penalties` (
`hwid`  bigint(20) UNSIGNED NOT NULL ,
`penalties`  int(10) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`hwid`)
)
;


ALTER TABLE `hwid_penalties`
ADD COLUMN `last_reason`  varchar(255) NOT NULL AFTER `penalties`;

