CREATE DATABASE  IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `books`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8MB4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES
(62,'Asimov Isaac'),
(66,'Atwood Margaret'),
(127,'Auferbauer Günter'),
(128,'Auferbauer Luise'),
(67,'Bear Greg'),
(22,'Bitsch Gerhard'),
(133,'Codd Edgar'),
(68,'Coetzee J. M.'),
(108,'Coronel Carlos'),
(16,'Darween Hugh'),
(134,'Darwen Hugh'),
(15,'Date Chris'),
(91,'Deimeke Dirk'),
(30,'DuBois Paul'),
(5,'Edwards Jeri'),
(88,'Eickler André'),
(82,'Eller Frank'),
(90,'Ende Michael'),
(96,'Fischer Marcus'),
(99,'Fossum Karin'),
(69,'Gardell Jonas'),
(26,'Garfinkel Simon'),
(7,'Gerken Till'),
(48,'Gilmore W.J.'),
(38,'Goosens Michael'),
(98,'Goossens Michel'),
(100,'Guillou Jan'),
(121,'Habelitz Hans-Peter'),
(4,'Harkey Dan'),
(78,'Hauser Tobias'),
(101,'Heberlein Ann'),
(107,'Hernandez Michael'),
(23,'Holz Helmut'),
(126,'Hüttl Franz'),
(70,'Ibsen Henrik'),
(130,'Iggulden Conn'),
(102,'Isaacson Walter'),
(71,'Johnson Eyvind'),
(103,'Jonasson Jonas'),
(92,'Kania Stefan'),
(87,'Kemper Alfons'),
(14,'King Tim'),
(57,'Knausgård Karl Ove'),
(104,'Knecht Doris'),
(1,'Kofler Michael'),
(21,'Komma Michael'),
(20,'Kopka Helmut'),
(2,'Kramer David'),
(17,'Krause Jörg'),
(56,'Krüger Guido'),
(93,'Kühnast Charly'),
(124,'Kühnel Andreas'),
(129,'Kutscher Volker'),
(64,'Laborenz Kai'),
(105,'Larsson Stieg'),
(81,'Lendecke Volker'),
(135,'Lorentzos Nikos'),
(55,'Mankell Henning'),
(97,'Mittelbach Frank'),
(53,'Monjiam Bruce'),
(109,'Morris Steven'),
(106,'Mukherjee Siddhartha'),
(73,'Nesser Håkan'),
(131,'Obama Barack'),
(60,'Öggl Bernd'),
(3,'Orfali Robert'),
(19,'Pohl Peter'),
(125,'Pokos Kurt'),
(47,'Pollack Martin'),
(39,'Rahtz Sebastian'),
(6,'Ratschiller Tobias'),
(117,'Ratz Dietmar'),
(111,'Redmond Eric'),
(13,'Reese Georg'),
(74,'Riel Joern'),
(110,'Rob Peter'),
(132,'Robers Andrew'),
(76,'Saramago Jose'),
(118,'Scheffler Jens'),
(24,'Schmitt Bernd'),
(113,'Schwartz Barin'),
(83,'Schwichtenberg Holger'),
(119,'Seese Detlef'),
(94,'Semmelroggen Stefan'),
(75,'Söderberg Hjalmar'),
(89,'Spenneberg Ralf'),
(58,'Suter Martin'),
(123,'Szépfalusi'),
(37,'Theodor Kallifatides'),
(52,'Thomson Laura'),
(25,'Tikart Andreas'),
(115,'Tkachenko Vadim'),
(116,'Ullenboom Christian'),
(77,'van Heijden Adrianus Fr. Th.'),
(95,'van Soest Daniel'),
(51,'Wellington Luke'),
(120,'Wiesenberger Jan'),
(112,'Wilson Jim'),
(65,'Wolfgarten Sebastian'),
(122,'Wolfsperger'),
(12,'Yarger Randy Jay'),
(114,'Zaitsev Peter');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `edition` int DEFAULT NULL,
  `publId` int DEFAULT NULL,
  `catId` int DEFAULT NULL,
  `langId` int DEFAULT NULL,
  `publYear` int DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `comment` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `langId` (`langId`),
  KEY `catId` (`catId`),
  KEY `publId` (`publId`),
  FULLTEXT KEY `title_2` (`title`,`subtitle`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`langId`) REFERENCES `languages` (`id`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`catId`) REFERENCES `categories` (`id`),
  CONSTRAINT `books_ibfk_3` FOREIGN KEY (`publId`) REFERENCES `publishers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES
(1,'Linux (5. Auflage)','Installation, Konfiguration, Anwendung',5,1,57,2,2000,NULL,NULL),
(2,'The Definitive Guide to Excel VBA',NULL,NULL,2,3,NULL,2000,NULL,NULL),
(3,'Client/Server Survival Guide',NULL,NULL,1,2,NULL,1997,NULL,NULL),
(4,'Web Application Development with PHP 4.0',NULL,NULL,3,6,NULL,2000,NULL,NULL),
(7,'MySQL','',0,3,34,NULL,2000,'',''),
(9,'MySQL & mSQL',NULL,NULL,4,34,NULL,1999,NULL,NULL),
(11,'A Guide to the SQL Standard','A User\'s Guide to the Standard Relational Language SQL',NULL,1,8,1,1997,NULL,NULL),
(13,'Visual Basic 6','Programmiertechniken, Datenbanken, Internet',NULL,1,51,2,1998,NULL,NULL),
(14,'Excel 2000 programmieren',NULL,4,1,3,2,NULL,NULL,NULL),
(17,'PHP - Grundlagen und Lösungen','Webserver-Programmierung unter Windows und Linux',NULL,5,6,2,NULL,NULL,NULL),
(18,'Nennen wir ihn Anna',NULL,NULL,NULL,9,2,NULL,NULL,NULL),
(19,'Alltid den där Annette',NULL,NULL,NULL,9,3,NULL,NULL,NULL),
(20,'Jag saknar dig, jag saknar dig',NULL,NULL,NULL,9,3,NULL,NULL,NULL),
(21,'LaTeX',NULL,NULL,1,36,2,2000,NULL,NULL),
(22,'Mathematica','Einführung, Anwendung, Referenz',4,1,1,2,1998,'3827312086','CAS'),
(23,'Maple',NULL,4,1,1,2,2001,NULL,'CAS'),
(24,'VBA-Programmierung mit Excel 7',NULL,NULL,1,3,2,NULL,NULL,NULL),
(25,'Linux für Internet und Intranet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(27,'Practical UNIX & Internet security',NULL,2,4,1,1,1996,'1565921488',NULL),
(30,'Visual Basic Datenbankprogrammierung','Client/Server-Systeme',1,1,2,2,1999,NULL,NULL),
(32,'Ute av verden',NULL,NULL,NULL,10,4,1998,NULL,NULL),
(33,'MySQL','Installation, Programmierung, Referenz',1,1,34,2,2001,'3827317622',NULL),
(34,'MySQL',NULL,1,2,34,1,2001,NULL,'translation'),
(41,'PHP 4',NULL,NULL,NULL,6,2,NULL,'3-446-21546-8',NULL),
(42,'Kärleken',NULL,NULL,9,10,3,1978,NULL,NULL),
(43,'Mit LaTeX ins Web','Elektronisches Publizieren mit TeX, HTML und XML',NULL,1,36,2,2000,NULL,NULL),
(51,'Anklage Vatermord','Der Fall Philipp Halsmann',1,16,10,2,2002,'3552052062',NULL),
(52,'A Programmer\'s Introduction to PHP 4.0',NULL,NULL,2,6,1,NULL,NULL,NULL),
(58,'Linux (6. Auflage)','Installation, Konfiguration, Anwendung',6,1,57,2,2001,NULL,NULL),
(59,'PHP and MySQL Web Development',NULL,NULL,NULL,6,1,NULL,NULL,NULL),
(60,'MySQL Cookbook','Solutions and Examples for MySQL Database Developers',NULL,4,34,1,2003,NULL,NULL),
(61,'PostgreSQL','Einführung und Konzepte',NULL,1,4,2,NULL,NULL,NULL),
(63,'Comédia Infantil',NULL,NULL,17,10,3,NULL,'9173246433',NULL),
(64,'Hunderna i Riga',NULL,NULL,17,10,3,NULL,'9173246549',NULL),
(65,'Java','Handbuch der Java-Programmierung',3,1,3,2,2002,NULL,NULL),
(66,'Ein perfekter Freund',NULL,NULL,19,10,2,NULL,NULL,NULL),
(67,'Linux im Büro','Jetzt lerne ich ...',1,20,57,2,2004,NULL,NULL),
(68,'PHP 5 und MySQL 5','Grundlagen, Programmiertechniken, Beispiele',1,1,6,2,2005,NULL,NULL),
(69,'Visual C#','Grundlagen, Programmiertechniken, Windows-Anwendungen',1,1,53,2,2003,NULL,NULL),
(70,'Excel-VBA programmieren',NULL,6,1,3,2,2004,NULL,NULL),
(71,'Visual Basic .NET','Grundlagen, Programmiertechniken, Windows-Anwendungen',1,1,60,2,2002,NULL,NULL),
(72,'I, Robot',NULL,NULL,NULL,64,1,NULL,NULL,NULL),
(75,'The Definitive Guide to MySQL',NULL,2,2,34,1,2003,NULL,NULL),
(77,'CSS-Praxis',NULL,2,21,1,2,2004,NULL,NULL),
(78,'Apache Webserver 2.0','Installation, Konfiguration, Programmierung',1,1,88,2,2003,NULL,NULL),
(79,'Oryx and Crake',NULL,1,NULL,64,1,2003,NULL,NULL),
(80,'Darwins Radio',NULL,NULL,NULL,64,1,NULL,NULL,NULL),
(81,'Disgrace',NULL,NULL,NULL,10,1,NULL,NULL,NULL),
(82,'Life and Times of Michael K',NULL,NULL,NULL,10,1,NULL,NULL,NULL),
(83,'Oskuld och andra texter',NULL,NULL,NULL,10,3,NULL,NULL,NULL),
(84,'Gengångare',NULL,NULL,NULL,10,3,NULL,NULL,NULL),
(85,'Grupp Krilon',NULL,NULL,NULL,10,3,NULL,NULL,NULL),
(86,'Dansläraren Återkomst',NULL,NULL,NULL,10,3,NULL,NULL,NULL),
(87,'Och Picadilly Circus ligger inter i Kumla',NULL,NULL,NULL,10,3,NULL,NULL,NULL),
(88,'Nicht alle Eisbären halten Winterschlaf',NULL,NULL,NULL,10,2,NULL,NULL,NULL),
(89,'Das Haus meiner Väter',NULL,NULL,NULL,10,2,NULL,NULL,NULL),
(90,'Doktor Glas',NULL,NULL,NULL,10,3,NULL,NULL,NULL),
(91,'Die Stadt der Blinden',NULL,NULL,NULL,10,2,NULL,NULL,NULL),
(92,'Das Zentrum',NULL,NULL,NULL,10,2,NULL,NULL,NULL),
(93,'Ein Tag, ein Leben',NULL,NULL,NULL,10,2,NULL,NULL,NULL),
(94,'JavaScript','Interaktives und dynamisches Webpublishing',NULL,20,1,2,NULL,NULL,NULL),
(95,'Windows Forms','dotnet essentials',NULL,1,60,2,2002,NULL,NULL),
(97,'Samba',NULL,NULL,23,57,2,2003,NULL,NULL),
(98,'Programmieren mit der .NET-Klassenbibliothek',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),
(99,'Programmieren mit der .NET-Klassenbibliothek, 2. Aufl.',NULL,NULL,1,60,2,2003,NULL,NULL),
(101,'Das Atari ST Grafikbuch',NULL,NULL,24,NULL,NULL,NULL,NULL,NULL),
(108,'Linux (8. Auflage)','Installation, Konfiguration, Anwendung',8,1,57,2,2007,NULL,NULL),
(110,'PHP 5.3 und MySQL 5.4',NULL,3,1,6,2,2009,NULL,NULL),
(111,'Ubuntu 9.04',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),
(112,'Datenbanksysteme','Eine Einführung',8,26,2,2,2011,NULL,NULL),
(114,'Linux2013',NULL,12,1,57,2,2012,NULL,NULL),
(115,'Markdown & Pandoc',NULL,NULL,27,1,2,2013,NULL,NULL),
(116,'MySQL 5.5 & 5.6',NULL,NULL,27,34,2,2012,NULL,NULL),
(117,'Handbuch der Java-Programmierung',NULL,NULL,1,50,2,2005,NULL,NULL),
(118,'Die Java-Syntax',NULL,NULL,27,50,2,2012,NULL,NULL),
(119,'KVM für die Server-Virtualisierung',NULL,NULL,1,1,2,2012,NULL,NULL),
(120,'Der satanarchäolügenialkohöllische Wunschpunsch',NULL,NULL,28,9,2,1989,NULL,NULL),
(121,'Linux Server',NULL,2,21,57,2,2012,NULL,NULL),
(122,'Ubuntu 12.04 LTS',NULL,7,21,57,2,2012,NULL,NULL),
(123,'Der LaTeX Begleiter',NULL,NULL,29,36,2,2005,NULL,NULL),
(124,'OS X Lion',NULL,NULL,1,95,2,2011,NULL,NULL),
(125,'Den onda viljan',NULL,NULL,NULL,96,3,NULL,NULL,NULL),
(126,'Döden ska du tåla',NULL,NULL,NULL,96,3,NULL,NULL,NULL),
(127,'I hennes majestäts tjänst',NULL,NULL,NULL,96,3,NULL,NULL,NULL),
(128,'Ondskan',NULL,NULL,NULL,10,3,NULL,NULL,NULL),
(129,'Om Jesus',NULL,NULL,NULL,10,3,NULL,NULL,NULL),
(130,'Jag vill inte dö, jag vill bara inte leva',NULL,NULL,NULL,NULL,3,NULL,NULL,NULL),
(131,'Steve Jobs',NULL,NULL,NULL,1,1,NULL,NULL,NULL),
(132,'Hundraåringen som klev ut genom fönstret och försvann',NULL,NULL,30,NULL,3,NULL,NULL,NULL),
(133,'Gruber geht',NULL,NULL,NULL,10,2,NULL,NULL,NULL),
(134,'Män som hatar kvinnor',NULL,NULL,NULL,96,3,NULL,NULL,NULL),
(135,'Krebs -- Der König aller Krankheiten',NULL,NULL,NULL,11,1,NULL,NULL,NULL),
(136,'Styckerskan från Lilla Burma',NULL,NULL,NULL,96,3,NULL,NULL,NULL),
(137,'Database Design for Mere Mortals',NULL,NULL,1,2,1,NULL,NULL,NULL),
(138,'Database Systems','Design, Implementation, and Management',10,31,2,1,2012,NULL,NULL),
(139,'Seven Databases in Seven Weeks','Seven Databases in Seven Weeks',NULL,32,2,1,2012,NULL,NULL),
(140,'MySQL',NULL,5,1,34,1,2013,NULL,NULL),
(141,'High Performance MySQL','Optimization, Backups, and Replication',3,4,34,1,2012,NULL,NULL),
(142,'Java ist auch eine Insel','Das umfassende Handbuch',10,21,50,NULL,2011,NULL,NULL),
(143,'Grundkurs Programmieren in Java',NULL,6,5,50,2,2011,NULL,NULL),
(144,'Programmieren lernen mit Java','Aktuell zu Java 7 - Keine Vorkenntnisse erforderlich',NULL,21,50,2,2012,NULL,NULL),
(145,'Korsika',NULL,NULL,33,99,2,NULL,NULL,NULL),
(146,'Klettersteigguide Tirol',NULL,NULL,34,99,2,2013,NULL,NULL),
(147,'Visual C# 2012',NULL,6,21,53,2,2013,NULL,NULL),
(148,'Tiroler Skitouren Handbuch',NULL,NULL,35,99,2,NULL,NULL,NULL),
(149,'Schitourenparadies Steiermark',NULL,NULL,36,99,2,1997,NULL,NULL),
(150,'Linux','Das umfassende Handbuch',16,37,57,2,2019,NULL,NULL),
(151,'Docker','Das umfassende Handbuch',2,37,3,2,2019,NULL,NULL),
(152,'Git',NULL,1,37,1,2,2020,NULL,NULL),
(153,'Kotlin','Das umfassende Handbuch',1,37,104,2,2020,NULL,NULL),
(154,'Der nasse Fisch',NULL,NULL,38,66,2,2008,NULL,NULL),
(155,'Der stumme Tod',NULL,NULL,38,66,2,2009,NULL,NULL),
(156,'Goldstein',NULL,NULL,38,66,2,2010,NULL,NULL),
(157,'Die Akte Vaterland',NULL,NULL,38,66,2,2012,NULL,NULL),
(158,'Märzgefallene',NULL,NULL,38,66,2,2014,NULL,NULL),
(159,'Wolf of the Plains',NULL,NULL,39,66,1,2007,NULL,NULL),
(160,'Lords of the Bow',NULL,NULL,39,66,1,2008,NULL,NULL),
(161,'Bones of the Hill',NULL,NULL,39,66,1,2008,NULL,NULL),
(162,'Empire of Silver',NULL,NULL,39,66,1,2010,NULL,NULL),
(163,'Conqueror',NULL,NULL,39,66,1,2011,NULL,NULL),
(164,'A Promised Land',NULL,NULL,40,106,1,2020,NULL,NULL),
(165,'Churchill: Walking with Destiny',NULL,NULL,41,106,1,2019,NULL,NULL),
(166,'An Introduction to Database Systems',NULL,3,1,2,1,1981,NULL,NULL),
(167,'The Relational Model for Database Management',NULL,NULL,1,2,1,1990,NULL,NULL),
(168,'Time and Relational Theory','Temporal Databases in the Relational Model and SQL',2,42,2,1,2014,NULL,NULL),
(169,'Database Design and Relational Theory',NULL,2,2,2,1,2019,NULL,NULL),
(170,'Python',NULL,2,37,3,2,2021,NULL,NULL),
(177,'Datenbanksysteme -- Das umfassende Lehrbuch',NULL,NULL,37,NULL,NULL,2022,NULL,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = UTF8MB4 */ ;
/*!50003 SET character_set_results = UTF8MB4 */ ;
/*!50003 SET collation_connection  = UTF8MB4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `books_before_insert` BEFORE INSERT ON `books` FOR EACH ROW BEGIN
    IF NEW.edition <= 0 then
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'invalid value for edition';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `books2020`
--

DROP TABLE IF EXISTS `books2020`;
/*!50001 DROP VIEW IF EXISTS `books2020`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = UTF8MB4;
/*!50001 CREATE TABLE `books2020` (
  `id` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `subtitle` tinyint NOT NULL,
  `edition` tinyint NOT NULL,
  `publId` tinyint NOT NULL,
  `catId` tinyint NOT NULL,
  `langId` tinyint NOT NULL,
  `publYear` tinyint NOT NULL,
  `isbn` tinyint NOT NULL,
  `comment` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `parent` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `parent` (`parent`),
  CONSTRAINT `parent` FOREIGN KEY (`parent`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,'Computer books',11),
(2,'Databases',1),
(3,'Programming',1),
(4,'Relational Databases',2),
(5,'Object-oriented databases',2),
(6,'PHP',3),
(7,'Perl',3),
(8,'SQL',2),
(9,'Children\'s books',11),
(10,'Literature and fiction',11),
(11,'All books',NULL),
(34,'MySQL',2),
(36,'LaTeX, TeX',1),
(50,'Java',3),
(51,'Visual Basic',3),
(52,'VBA',3),
(53,'C#',3),
(54,'C',3),
(55,'C++',3),
(56,'Operating Systems',1),
(57,'Linux',56),
(59,'Windows',56),
(60,'Visual Basic .NET',3),
(64,'Science Fiction',10),
(65,'Fantasy',10),
(66,'History',10),
(67,'Microsoft SQL Server',2),
(68,'Oracle',2),
(69,'IBM DB/2',2),
(77,'PostgreSQL',2),
(87,'Server configuration and administration',1),
(88,'Web server',87),
(89,'News server',87),
(90,'Mail server',87),
(91,'NFS',87),
(92,'Samba',87),
(93,'CUPS',87),
(94,'Microsoft Access',2),
(95,'macOS',56),
(96,'Crime',10),
(97,'Guide books',11),
(98,'Travelling',97),
(99,'Mountain guides',97),
(100,'Europe',98),
(101,'North America',98),
(102,'South America',98),
(103,'Swift',3),
(104,'Kotlin',3),
(105,'SQLite',2),
(106,'Biography',10),
(107,'MariaDB',2);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES
(1,'Peter','m'),
(2,'Anna','f'),
(3,'Aimee','f');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `englishTitles`
--

DROP TABLE IF EXISTS `englishTitles`;
/*!50001 DROP VIEW IF EXISTS `englishTitles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = UTF8MB4;
/*!50001 CREATE TABLE `englishTitles` (
  `id` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `subtitle` tinyint NOT NULL,
  `edition` tinyint NOT NULL,
  `publId` tinyint NOT NULL,
  `catId` tinyint NOT NULL,
  `langId` tinyint NOT NULL,
  `publYear` tinyint NOT NULL,
  `isbn` tinyint NOT NULL,
  `comment` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES
(1,'English'),
(2,'Deutsch'),
(3,'Svensk'),
(4,'Norsk');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `publishers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES
(1,'Addison-Wesley','München'),
(2,'Apress','New York'),
(3,'New Riders',NULL),
(4,'O\'Reilly & Associates',NULL),
(5,'Hanser','München'),
(9,'Bonnier Pocket',NULL),
(16,'Zsolnay',NULL),
(17,'Ordfront förlag AB',NULL),
(19,'Diogenes Verlag',NULL),
(20,'Markt und Technik','München'),
(21,'Galileo Press','Bonn'),
(23,'dpunkt',NULL),
(24,'Sybex',NULL),
(26,'Oldenbourg Verlag',NULL),
(27,'ebooks.kofler','Graz'),
(28,'Thienemann',NULL),
(29,'Pearson Studium','München'),
(30,'Pirat',NULL),
(31,'Cengage Learning',NULL),
(32,'Pragmatic Bookshelf',NULL),
(33,'Rother',NULL),
(34,'Tyrolia','Innsbruck'),
(35,'Studienverlag',NULL),
(36,'Styria','Graz'),
(37,'Rheinwerk Verlag','Bonn'),
(38,'Kiepenheuer & Witsch',NULL),
(39,'HarperCollins',NULL),
(40,'Crown',NULL),
(41,'Penguin',NULL),
(42,'Morgan Kaufmann Publishers',NULL);
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `t1` (
  `a` int NOT NULL,
  `b` varchar(20) NOT NULL,
  `e` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1`
--

LOCK TABLES `t1` WRITE;
/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
INSERT INTO `t1` VALUES
(1,'III',12),
(2,'XI',13),
(3,'V',NULL),
(4,'VI',27),
(5,'II',NULL),
(6,'IX',8),
(7,'X',15);
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t2`
--

DROP TABLE IF EXISTS `t2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `t2` (
  `c` int NOT NULL,
  `d` varchar(20) NOT NULL,
  `e` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t2`
--

LOCK TABLES `t2` WRITE;
/*!40000 ALTER TABLE `t2` DISABLE KEYS */;
INSERT INTO `t2` VALUES
(33,'abc',NULL),
(34,'efg',12),
(35,'opq',27),
(36,'ijk',NULL),
(37,'uvw',8),
(38,'xyz',9);
/*!40000 ALTER TABLE `t2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t3`
--

DROP TABLE IF EXISTS `t3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `t3` (
  `id` int NOT NULL,
  `data` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t3`
--

LOCK TABLES `t3` WRITE;
/*!40000 ALTER TABLE `t3` DISABLE KEYS */;
INSERT INTO `t3` VALUES
(1,100),
(2,100),
(3,250),
(4,NULL),
(5,200),
(6,300),
(7,1000),
(8,500),
(9,NULL),
(10,700);
/*!40000 ALTER TABLE `t3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!50001 DROP VIEW IF EXISTS `titles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = UTF8MB4;
/*!50001 CREATE TABLE `titles` (
  `id` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `edition` tinyint NOT NULL,
  `publName` tinyint NOT NULL,
  `publYear` tinyint NOT NULL,
  `langName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `titlesAuthorCount`
--

DROP TABLE IF EXISTS `titlesAuthorCount`;
/*!50001 DROP VIEW IF EXISTS `titlesAuthorCount`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = UTF8MB4;
/*!50001 CREATE TABLE `titlesAuthorCount` (
  `id` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `count(w.authId)` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `writtenBy`
--

DROP TABLE IF EXISTS `writtenBy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `writtenBy` (
  `bookId` int NOT NULL,
  `authId` int NOT NULL,
  PRIMARY KEY (`bookId`,`authId`),
  KEY `authId` (`authId`),
  CONSTRAINT `authId` FOREIGN KEY (`authId`) REFERENCES `authors` (`id`),
  CONSTRAINT `bookId` FOREIGN KEY (`bookId`) REFERENCES `books` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writtenBy`
--

LOCK TABLES `writtenBy` WRITE;
/*!40000 ALTER TABLE `writtenBy` DISABLE KEYS */;
INSERT INTO `writtenBy` VALUES
(1,1),
(2,1),
(13,1),
(14,1),
(22,1),
(23,1),
(24,1),
(30,1),
(33,1),
(34,1),
(58,1),
(67,1),
(68,1),
(69,1),
(70,1),
(71,1),
(75,1),
(95,1),
(101,1),
(108,1),
(110,1),
(111,1),
(114,1),
(115,1),
(116,1),
(118,1),
(119,1),
(124,1),
(150,1),
(151,1),
(152,1),
(153,1),
(2,2),
(34,2),
(75,2),
(3,3),
(3,4),
(3,5),
(4,6),
(4,7),
(9,12),
(9,13),
(9,14),
(11,15),
(166,15),
(168,15),
(169,15),
(11,16),
(17,17),
(41,17),
(18,19),
(19,19),
(20,19),
(21,20),
(23,21),
(23,22),
(25,23),
(25,24),
(25,25),
(27,26),
(7,30),
(60,30),
(140,30),
(42,37),
(43,38),
(43,39),
(51,47),
(52,48),
(59,51),
(59,52),
(61,53),
(63,55),
(64,55),
(86,55),
(65,56),
(117,56),
(32,57),
(66,58),
(68,60),
(110,60),
(151,60),
(152,60),
(72,62),
(77,64),
(78,65),
(79,66),
(80,67),
(81,68),
(82,68),
(83,69),
(129,69),
(84,70),
(85,71),
(87,73),
(136,73),
(88,74),
(89,74),
(90,75),
(91,76),
(92,76),
(93,77),
(94,78),
(97,81),
(69,82),
(98,82),
(99,82),
(98,83),
(99,83),
(112,87),
(112,88),
(119,89),
(124,89),
(120,90),
(121,91),
(121,92),
(121,93),
(121,94),
(121,95),
(122,96),
(123,97),
(123,98),
(125,99),
(126,99),
(127,100),
(128,100),
(130,101),
(131,102),
(132,103),
(133,104),
(134,105),
(135,106),
(137,107),
(138,108),
(138,109),
(138,110),
(139,111),
(139,112),
(141,113),
(141,114),
(141,115),
(142,116),
(143,117),
(143,118),
(143,119),
(143,120),
(144,121),
(145,122),
(146,123),
(147,124),
(148,125),
(148,126),
(149,127),
(149,128),
(154,129),
(155,129),
(156,129),
(157,129),
(158,129),
(159,130),
(160,130),
(161,130),
(162,130),
(163,130),
(164,131),
(165,132),
(167,133),
(168,134),
(168,135);
/*!40000 ALTER TABLE `writtenBy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'books'
--
/*!50003 DROP FUNCTION IF EXISTS `shorten` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = UTF8MB4 */ ;
/*!50003 SET character_set_results = UTF8MB4 */ ;
/*!50003 SET collation_connection  = UTF8MB4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `shorten`(s VARCHAR(16383), n INT) RETURNS varchar(16383) CHARSET UTF8MB4
    DETERMINISTIC
BEGIN
    IF s IS NULL THEN
        RETURN NULL;
    ELSEIF n<15 THEN
        RETURN LEFT(s, n);
    ELSE
        IF CHAR_LENGTH(s) <= n THEN
            RETURN s;
        ELSE
            RETURN CONCAT(LEFT(s, n-10), ' ... ', RIGHT(s, 5));
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `categories_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = UTF8MB4 */ ;
/*!50003 SET character_set_results = UTF8MB4 */ ;
/*!50003 SET collation_connection  = UTF8MB4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `categories_insert`(IN  p_newcatname VARCHAR(60),
    IN  p_parent INT, 
    OUT p_newid INT)
proc: BEGIN
    DECLARE cnt INT;
    SET p_newid = -1;
     
    -- Validierung, Prozedur gegebenenfalls verlassen
    SELECT COUNT(*) FROM categories 
    WHERE parent = p_parent INTO cnt;
    
    IF ISNULL(p_newcatname) OR TRIM(p_newcatname) = "" 
    OR cnt = 0 THEN
        LEAVE proc;
    END IF;
     
    -- Test, ob die Kategorie schon exisitert
    SELECT COUNT(*) FROM categories 
    WHERE parent = p_parent AND name = p_newcatname 
    INTO cnt;
     
    -- wenn ja, deren ID zurückgeben
    IF cnt = 1 THEN 
        SELECT id FROM categories 
        WHERE parent = p_parent AND name = p_newcatname 
        INTO p_newid;
        LEAVE proc; 
    END IF;
     
    -- sonst neue Kategorie einfügen ...
    INSERT INTO categories (name, parent)
    VALUES (p_newcatname, p_parent);
     
    -- ... und die ID-Nummer der neuen Kategorie zurückgeben
    SET p_newid = LAST_INSERT_ID();
END proc ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cursortest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = UTF8MB4 */ ;
/*!50003 SET character_set_results = UTF8MB4 */ ;
/*!50003 SET collation_connection  = UTF8MB4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `cursortest`(OUT avg_len DOUBLE)
BEGIN
    DECLARE t, subt VARCHAR(100);
    DECLARE done INT DEFAULT 0;
    DECLARE n BIGINT DEFAULT 0;
    DECLARE cnt INT;
    DECLARE mycursor CURSOR FOR 
        SELECT title, subtitle FROM books;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;
    
    SELECT COUNT(*) FROM titles INTO cnt;
    
    OPEN mycursor;
    
    myloop: LOOP
        FETCH mycursor INTO t, subt;
        IF done = 1 THEN LEAVE myloop; END IF;
        SET n = n + CHAR_LENGTH(t);
        IF subt IS NOT NULL THEN
          SET n = n + CHAR_LENGTH(subt);
        END IF;
    END LOOP myloop;
    
    SET avg_len = n/cnt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTitlesFromPublisher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = UTF8MB4 */ ;
/*!50003 SET character_set_results = UTF8MB4 */ ;
/*!50003 SET collation_connection  = UTF8MB4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getTitlesFromPublisher`(p_publId INT)
BEGIN
    SELECT id, title, subtitle
    FROM books
    WHERE publId = p_publId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `books2020`
--

/*!50001 DROP TABLE IF EXISTS `books2020`*/;
/*!50001 DROP VIEW IF EXISTS `books2020`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = UTF8MB4 */;
/*!50001 SET character_set_results     = UTF8MB4 */;
/*!50001 SET collation_connection      = UTF8MB4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `books2020` AS select `books`.`id` AS `id`,`books`.`title` AS `title`,`books`.`subtitle` AS `subtitle`,`books`.`edition` AS `edition`,`books`.`publId` AS `publId`,`books`.`catId` AS `catId`,`books`.`langId` AS `langId`,`books`.`publYear` AS `publYear`,`books`.`isbn` AS `isbn`,`books`.`comment` AS `comment` from `books` where (`books`.`publYear` = 2020) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `englishTitles`
--

/*!50001 DROP TABLE IF EXISTS `englishTitles`*/;
/*!50001 DROP VIEW IF EXISTS `englishTitles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = UTF8MB4 */;
/*!50001 SET character_set_results     = UTF8MB4 */;
/*!50001 SET collation_connection      = UTF8MB4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `englishTitles` AS select `b`.`id` AS `id`,`b`.`title` AS `title`,`b`.`subtitle` AS `subtitle`,`b`.`edition` AS `edition`,`b`.`publId` AS `publId`,`b`.`catId` AS `catId`,`b`.`langId` AS `langId`,`b`.`publYear` AS `publYear`,`b`.`isbn` AS `isbn`,`b`.`comment` AS `comment` from (`books` `b` join `languages` `l` on((`l`.`id` = `b`.`langId`))) where (`l`.`name` = 'english') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `titles`
--

/*!50001 DROP TABLE IF EXISTS `titles`*/;
/*!50001 DROP VIEW IF EXISTS `titles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = UTF8MB4 */;
/*!50001 SET character_set_results     = UTF8MB4 */;
/*!50001 SET collation_connection      = UTF8MB4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `titles` AS select `b`.`id` AS `id`,`b`.`title` AS `title`,`b`.`edition` AS `edition`,`p`.`name` AS `publName`,`b`.`publYear` AS `publYear`,`l`.`name` AS `langName` from ((`books` `b` left join `publishers` `p` on((`p`.`id` = `b`.`publId`))) left join `languages` `l` on((`l`.`id` = `b`.`langId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `titlesAuthorCount`
--

/*!50001 DROP TABLE IF EXISTS `titlesAuthorCount`*/;
/*!50001 DROP VIEW IF EXISTS `titlesAuthorCount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = UTF8MB4 */;
/*!50001 SET character_set_results     = UTF8MB4 */;
/*!50001 SET collation_connection      = UTF8MB4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `titlesAuthorCount` AS select `b`.`id` AS `id`,`b`.`title` AS `title`,count(`w`.`authId`) AS `count(w.authId)` from (`books` `b` join `writtenBy` `w` on((`w`.`bookId` = `b`.`id`))) group by `b`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-03  9:17:43
