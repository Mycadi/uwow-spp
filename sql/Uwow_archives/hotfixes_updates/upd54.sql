-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 29 2017 г., 11:01
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
-- Структура таблицы `garr_talent`
--

DROP TABLE IF EXISTS `garr_talent`;
CREATE TABLE IF NOT EXISTS `garr_talent` (
  `Unknown0` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `ResearchTime` int(11) NOT NULL,
  `Unknown4` smallint(5) NOT NULL,
  `OptionIdx` smallint(5) NOT NULL,
  `Unknown6` smallint(5) NOT NULL,
  `Id` int(11) NOT NULL,
  `TalentTreeID` int(11) NOT NULL,
  `Unknown9` int(11) NOT NULL,
  `UnkCriteria` int(11) NOT NULL,
  `ResearchPriceCost` int(11) NOT NULL,
  `ResearchPriceCurrency` int(11) NOT NULL,
  `Unknown13` int(11) NOT NULL,
  `SpellAura` int(11) NOT NULL,
  `UnkCriteria2` int(11) NOT NULL,
  `UnkPriceCost` int(11) NOT NULL,
  `UnkPriceCurrency` int(11) NOT NULL,
  `UnkResearchTime` int(11) NOT NULL,
  `Unknown19` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `garr_talent_tree`
--

DROP TABLE IF EXISTS `garr_talent_tree`;
CREATE TABLE IF NOT EXISTS `garr_talent_tree` (
  `ID` int(11) NOT NULL,
  `Unknown0` smallint(5) NOT NULL,
  `Unknown1` smallint(5) NOT NULL,
  `Class` int(11) NOT NULL,
  `Unknown3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `garr_talent`
--
ALTER TABLE `garr_talent`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `garr_talent_tree`
--
ALTER TABLE `garr_talent_tree`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
