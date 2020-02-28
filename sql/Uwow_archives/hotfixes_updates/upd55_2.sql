-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 17 2017 г., 21:19
-- Версия сервера: 10.0.20-MariaDB
-- Версия PHP: 5.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `leg_hotfixes`
--

-- --------------------------------------------------------

--
-- Структура таблицы `garr_encounter_x_mechanic`
--

DROP TABLE IF EXISTS `garr_encounter_x_mechanic`;
CREATE TABLE `garr_encounter_x_mechanic` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrEncounterID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrMechanicID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `garr_mechanic_set_x_mechanic`
--

DROP TABLE IF EXISTS `garr_mechanic_set_x_mechanic`;
CREATE TABLE `garr_mechanic_set_x_mechanic` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Mechanic` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `xMechanic` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `garr_encounter_x_mechanic`
--
ALTER TABLE `garr_encounter_x_mechanic`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `garr_mechanic_set_x_mechanic`
--
ALTER TABLE `garr_mechanic_set_x_mechanic`
  ADD PRIMARY KEY (`ID`);

DROP TABLE IF EXISTS `garr_encounter_set_x_encounter`;
CREATE TABLE `garr_encounter_set_x_encounter` (
  `ID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `xEncounter` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `Encounter` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT '0'
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

ALTER TABLE `garr_encounter_set_x_encounter`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
