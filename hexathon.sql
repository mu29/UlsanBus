# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.24)
# Database: hexathon
# Generation Time: 2015-05-03 17:01:29 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bus_stop
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bus_stop`;

CREATE TABLE `bus_stop` (
  `id` int(11) unsigned NOT NULL,
  `name` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bus_stop` WRITE;
/*!40000 ALTER TABLE `bus_stop` DISABLE KEYS */;

INSERT INTO `bus_stop` (`id`, `name`)
VALUES
	(21603,'우정지하도앞'),
	(21605,'성남동'),
	(22401,'옥현주공아파트앞'),
	(24302,'학성공원'),
	(30704,'신복로터리'),
	(31104,'태화로터리'),
	(31106,'신정시장앞'),
	(31110,'시청앞'),
	(31114,'달동사거리'),
	(40328,'울산공항앞'),
	(40332,'북구청앞'),
	(40401,'공업탑'),
	(40506,'병영사거리'),
	(40605,'법원앞'),
	(40607,'울주군청앞'),
	(40613,'신정고등학교앞');

/*!40000 ALTER TABLE `bus_stop` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table friday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `friday`;

CREATE TABLE `friday` (
  `start` int(11) NOT NULL,
  `dest` int(11) NOT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table monday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `monday`;

CREATE TABLE `monday` (
  `start` int(11) NOT NULL,
  `dest` int(11) NOT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `monday` WRITE;
/*!40000 ALTER TABLE `monday` DISABLE KEYS */;

INSERT INTO `monday` (`start`, `dest`, `time`, `min`, `max`, `avg`, `num`)
VALUES
	(24302,40506,0,166,166,166,1),
	(22401,40605,0,282,282,282,1),
	(40605,40607,0,148,148,148,1),
	(40506,40332,0,204,204,204,1),
	(40607,40613,0,57,57,57,1),
	(40332,40328,0,107,107,107,1),
	(40613,40401,0,106,106,106,1),
	(40401,31114,0,88,88,88,1),
	(31114,31110,0,155,155,155,1),
	(31110,31106,0,53,53,53,1),
	(31106,31104,0,112,112,112,1),
	(31104,21603,0,91,91,91,1),
	(21603,21605,1,71,71,71,1);

/*!40000 ALTER TABLE `monday` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table saturday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `saturday`;

CREATE TABLE `saturday` (
  `start` int(11) NOT NULL,
  `dest` int(11) NOT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table sunday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sunday`;

CREATE TABLE `sunday` (
  `start` int(11) NOT NULL,
  `dest` int(11) NOT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table thursday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `thursday`;

CREATE TABLE `thursday` (
  `start` int(11) NOT NULL,
  `dest` int(11) NOT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tuesday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tuesday`;

CREATE TABLE `tuesday` (
  `start` int(11) NOT NULL,
  `dest` int(11) NOT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table wednesday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wednesday`;

CREATE TABLE `wednesday` (
  `start` int(11) NOT NULL,
  `dest` int(11) NOT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
