ALTER TABLE `report_complaints`
ADD COLUMN `JustBanned`  int(1) NOT NULL DEFAULT 0 AFTER `MessageLog`;


delete from report_complaints;