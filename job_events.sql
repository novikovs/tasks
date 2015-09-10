-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.41-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных job
CREATE DATABASE IF NOT EXISTS `job` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `job`;


-- Дамп структуры для таблица job.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `begin` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы job.events: 12 rows
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`, `name`, `begin`, `end`) VALUES
	(1, 'Текущее, кончится на след. неделе', '2015-09-10 00:00:00', '2015-09-15 00:00:00'),
	(2, 'Уже прошло', '2015-09-01 00:00:00', '2015-09-04 00:00:00'),
	(3, 'Текущее на всю неделю', '2015-09-07 00:00:00', '2015-09-13 00:00:00'),
	(4, 'Текущее,  с середины до конца недели', '2015-09-10 00:00:00', '2015-09-13 00:00:00'),
	(5, 'Текущее, прошедшее (спорно, формально соотв. под ТЗ)', '2015-09-08 00:00:00', '2015-09-09 00:00:00'),
	(6, 'Текущее, закончится на след неделе', '2015-09-07 00:00:00', '2015-09-15 00:00:00'),
	(7, 'На след неделе', '2015-09-21 00:00:00', '2015-09-24 00:00:00'),
	(8, 'Текущее, началось давно, кончится не скоро', '2015-08-21 00:00:00', '2015-10-24 00:00:00'),
	(9, 'Текущее, началось на той неделе, законится на этой', '2015-09-02 00:00:00', '2015-09-12 00:00:00'),
	(10, 'Текущее на один день', '2015-09-10 00:00:00', '2015-09-10 00:00:00'),
	(11, 'Текущее на послдений день', '2015-09-13 00:00:00', '2015-09-13 00:00:00'),
	(12, 'Текущее на первый день', '2015-09-07 00:00:00', '2015-09-07 00:00:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
