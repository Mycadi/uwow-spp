CREATE TABLE `challenge_key`(
  `guid` INT(10) NOT NULL DEFAULT 0,
  `ID` MEDIUMINT(6) UNSIGNED NOT NULL DEFAULT 0,
  `Level` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `Affix` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `Affix1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `Affix2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `KeyIsCharded` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `timeReset` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
  `InstanceID` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `guid` (`guid`),
  KEY `timeReset` (`timeReset`)
) ENGINE=INNODB CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT IGNORE INTO challenge_key (guid, ID, `Level`, Affix, Affix1, Affix2, KeyIsCharded)
SELECT owner_guid, challengeMapID, challengeLevel, challengeAffix, challengeAffix1, challengeAffix2, challengeKeyIsCharded FROM item_instance WHERE itemEntry IN (138019) ORDER BY challengeLevel DESC;

UPDATE challenge_key SET timeReset = 1510113600;

ALTER TABLE `item_instance`   
  DROP COLUMN `challengeMapID`, 
  DROP COLUMN `challengeLevel`, 
  DROP COLUMN `challengeAffix`, 
  DROP COLUMN `challengeAffix1`, 
  DROP COLUMN `challengeAffix2`, 
  DROP COLUMN `challengeKeyIsCharded`;

-- Replace bugged state bonuses
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1742 ", "1676 ") WHERE `bonusListIDs` LIKE '%1742%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1743 ", "1677 ") WHERE `bonusListIDs` LIKE '%1743%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1744 ", "1678 ") WHERE `bonusListIDs` LIKE '%1744%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1745 ", "1679 ") WHERE `bonusListIDs` LIKE '%1745%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1746 ", "1680 ") WHERE `bonusListIDs` LIKE '%1746%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1747 ", "1681 ") WHERE `bonusListIDs` LIKE '%1747%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1748 ", "1682 ") WHERE `bonusListIDs` LIKE '%1748%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1749 ", "1683 ") WHERE `bonusListIDs` LIKE '%1749%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1750 ", "1684 ") WHERE `bonusListIDs` LIKE '%1750%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1751 ", "1685 ") WHERE `bonusListIDs` LIKE '%1751%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1752 ", "1686 ") WHERE `bonusListIDs` LIKE '%1752%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1753 ", "1687 ") WHERE `bonusListIDs` LIKE '%1753%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1754 ", "1688 ") WHERE `bonusListIDs` LIKE '%1754%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1755 ", "1689 ") WHERE `bonusListIDs` LIKE '%1755%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1756 ", "1690 ") WHERE `bonusListIDs` LIKE '%1756%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1757 ", "1691 ") WHERE `bonusListIDs` LIKE '%1757%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1758 ", "1692 ") WHERE `bonusListIDs` LIKE '%1758%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1759 ", "1693 ") WHERE `bonusListIDs` LIKE '%1759%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1760 ", "1694 ") WHERE `bonusListIDs` LIKE '%1760%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1761 ", "1695 ") WHERE `bonusListIDs` LIKE '%1761%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1762 ", "1696 ") WHERE `bonusListIDs` LIKE '%1762%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1763 ", "1697 ") WHERE `bonusListIDs` LIKE '%1763%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1764 ", "1698 ") WHERE `bonusListIDs` LIKE '%1764%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1765 ", "1699 ") WHERE `bonusListIDs` LIKE '%1765%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1766 ", "1700 ") WHERE `bonusListIDs` LIKE '%1766%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1767 ", "1701 ") WHERE `bonusListIDs` LIKE '%1767%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1768 ", "1702 ") WHERE `bonusListIDs` LIKE '%1768%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1769 ", "1703 ") WHERE `bonusListIDs` LIKE '%1769%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1770 ", "1704 ") WHERE `bonusListIDs` LIKE '%1770%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1771 ", "1705 ") WHERE `bonusListIDs` LIKE '%1771%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1772 ", "1706 ") WHERE `bonusListIDs` LIKE '%1772%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1773 ", "1707 ") WHERE `bonusListIDs` LIKE '%1773%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1774 ", "1708 ") WHERE `bonusListIDs` LIKE '%1774%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1775 ", "1709 ") WHERE `bonusListIDs` LIKE '%1775%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1776 ", "1710 ") WHERE `bonusListIDs` LIKE '%1776%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1777 ", "1711 ") WHERE `bonusListIDs` LIKE '%1777%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1778 ", "1712 ") WHERE `bonusListIDs` LIKE '%1778%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1779 ", "1713 ") WHERE `bonusListIDs` LIKE '%1779%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1780 ", "1714 ") WHERE `bonusListIDs` LIKE '%1780%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1781 ", "1715 ") WHERE `bonusListIDs` LIKE '%1781%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1782 ", "1716 ") WHERE `bonusListIDs` LIKE '%1782%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1783 ", "1717 ") WHERE `bonusListIDs` LIKE '%1783%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1784 ", "1718 ") WHERE `bonusListIDs` LIKE '%1784%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1785 ", "1719 ") WHERE `bonusListIDs` LIKE '%1785%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1786 ", "1720 ") WHERE `bonusListIDs` LIKE '%1786%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "1787 ", "1721 ") WHERE `bonusListIDs` LIKE '%1787%';

UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "3401 ", "1680 ") WHERE `bonusListIDs` LIKE '%3401%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "3402 ", "1687 ") WHERE `bonusListIDs` LIKE '%3402%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "3403 ", "1694 ") WHERE `bonusListIDs` LIKE '%3403%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "3404 ", "1701 ") WHERE `bonusListIDs` LIKE '%3404%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "3405 ", "1708 ") WHERE `bonusListIDs` LIKE '%3405%';
UPDATE item_instance SET `bonusListIDs` = REPLACE(`bonusListIDs`, "3406 ", "1715 ") WHERE `bonusListIDs` LIKE '%3406%';
