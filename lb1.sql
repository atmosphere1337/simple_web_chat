-- MySQL dump 10.13  Distrib 5.6.41, for Win32 (AMD64)
--
-- Host: localhost    Database: user120
-- ------------------------------------------------------
-- Server version	5.6.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(16) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'user','test','Igor','Boldyrev','avatar4.jpg'),(2,'atmosphere','1337','Vladimir','Putin','avatar0.jpg'),(3,'test','test','test','test','avatar0.jpg'),(5,'tratata','secretpassword','Barak','Obama','avatar0.jpg');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id1` int(11) DEFAULT NULL,
  `id2` int(11) DEFAULT NULL,
  `text` text,
  `isread` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,2,'I edited this message',1),(2,2,1,'from 2 to 1',1),(3,1,3,'from 1 to 3',1),(4,3,1,'from 3 to 1',1),(5,2,3,'from 2 to 3',1),(6,3,2,'from 3 to 2',1),(8,1,2,'Hi vladimir, it is Igor',1),(64,2,1,'Hi asdf',1),(65,2,1,'Проверка',1),(66,2,1,'fds',0);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table1`
--

DROP TABLE IF EXISTS `table1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `surname` char(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `gender` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table1`
--

LOCK TABLES `table1` WRITE;
/*!40000 ALTER TABLE `table1` DISABLE KEYS */;
INSERT INTO `table1` VALUES (1,'Artyom','Gerasimenko',2000,'male'),(2,'Yegor','Rozkov',2000,'male'),(3,'Denis','Gurov',1997,'male'),(4,'Alina','Aslamova',1999,'female'),(5,'Dmitry','Dubkov',1999,'male'),(6,'Svetlana','Rozkova',1999,'female'),(7,'Yegor','Rogozkin',1999,'male'),(8,'Sofia','Chudinova',1999,'female'),(9,'Irina','Aslamova',1999,'female'),(10,'Dmitry','Repin',1998,'male'),(11,'Anna','Spiridenkova',1998,'female'),(12,'Dmitry','Krylov',1999,'male'),(13,'Sofia','Dubkova',1999,'female'),(14,'Anatoly','Chudinov',1996,'male'),(15,'Denis','Chudinov',1997,'male'),(16,'Dmitry','Belosyorov',1996,'male'),(17,'Danyl','Aslamov',1997,'male'),(18,'Anatoly','Nehoroshkov',2000,'male'),(19,'Anna','Chudinova',1997,'female'),(20,'Roman','Rogozkin',1995,'male'),(21,'Alina','Morozova',1999,'female'),(22,'Artyom','Gerasimenko',1996,'male'),(23,'Alexander','Grishanov',2000,'male'),(24,'Danyl','Korchagin',1999,'male'),(25,'Alexey','Romanenko',1995,'male'),(26,'Ilya','Gurov',1999,'male'),(27,'Anna','Gurova',1999,'female'),(28,'Alexey','Krylov',1999,'male'),(29,'Yegor','Krylov',2000,'male'),(30,'Victor','Spiridenko',1996,'male'),(31,'Alexey','Gorbunov',1997,'male'),(32,'Anna','Fedotova',2000,'female'),(33,'Ilya','Spiridenko',1999,'male'),(34,'Vladimir','Rozkov',1999,'male'),(35,'Svetlana','Gunkova',1999,'female'),(36,'Anna','Usolceva',2000,'female'),(37,'Anatoly','Rozkov',1999,'male'),(38,'Artyom','Bogdanov',1998,'male'),(39,'Darya','Gavrilova',1996,'female'),(40,'Lubov','Gavrilova',2000,'female'),(41,'Dmitry','Krylov',1999,'male'),(42,'Danyl','Usolcev',1997,'male'),(43,'Danyl','Korchagin',1995,'male'),(44,'Evgeny','Spiridenko',2000,'male'),(45,'Evgeny','Bogdanov',1998,'male'),(46,'Roman','Spiridenko',1999,'male'),(47,'Evgeny','Nehoroshkov',1998,'male'),(48,'Sofia','Kozlova',1998,'female'),(49,'Darya','Nehoroshkova',1999,'female'),(50,'Alina','Gorbunova',1997,'female'),(51,'Ilya','Repin',1999,'male'),(52,'Darya','Rogozkina',1997,'female'),(53,'Dmitry','Repin',1999,'male'),(54,'Alexander','Repin',1999,'male'),(55,'Evgeny','Rogozkin',1998,'male'),(56,'Dmitry','Kozlov',1999,'male'),(57,'Igor','Gunko',1998,'male'),(58,'Vladimir','Sidorov',1999,'male'),(59,'Sofia','Rozkova',1999,'female'),(60,'Alexey','Sidorov',1999,'male'),(61,'Artyom','Spiridenko',1997,'male'),(62,'Artyom','Gavrilov',1999,'male'),(63,'Artyom','Aslamov',1999,'male'),(64,'Denis','Boldyrev',1999,'male'),(65,'Irina','Kozlova',1999,'female'),(66,'Alexey','Gurov',1995,'male'),(67,'Roman','Hasanov',2000,'male'),(68,'Alina','Bychkova',1998,'female'),(69,'Yegor','Korchagin',1999,'male'),(70,'Roman','Rogozkin',1998,'male'),(71,'Lubov','Rogozkina',2000,'female'),(72,'Igor','Korchagin',1996,'male'),(73,'Alina','Rogozkina',1999,'female'),(74,'Anatoly','Fedotov',1999,'male'),(75,'Margarita','Golvkova',2000,'female'),(76,'Sofia','Belosyorova',1999,'female'),(77,'Evgeny','Krylov',1998,'male'),(78,'Evgeny','Romanenko',1999,'male'),(79,'Dmitry','Belosyorov',1999,'male'),(80,'Ilya','Belosyorov',1999,'male'),(81,'Alina','Gurova',1998,'female'),(82,'Irina','Gorbunova',1999,'female'),(83,'Yegor','Repin',1999,'male'),(84,'Alina','Malyavkova',2000,'female'),(85,'Vladimir','Gorbunov',1999,'male'),(86,'Denis','Korchagin',1999,'male'),(87,'Denis','Gerasimenko',1997,'male'),(88,'Ilya','Korchagin',1999,'male'),(89,'Danyl','Rozkov',1999,'male'),(90,'Alexey','Romanov',2000,'male'),(91,'Danyl','Usolcev',1999,'male'),(92,'Alina','Repina',1999,'female'),(93,'Lubov','Korchagina',1998,'female'),(94,'Irina','Holodova',1999,'female'),(95,'Roman','Dubkov',2000,'male'),(96,'Evgeny','Gavrilov',1999,'male'),(97,'Vladimir','Bogdanov',1998,'male'),(98,'Evgeny','Dubkov',1998,'male'),(99,'Roman','Bogdanov',1999,'male'),(100,'Sofia','Gerasimenkova',1998,'female');
/*!40000 ALTER TABLE `table1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table2`
--

DROP TABLE IF EXISTS `table2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table2` (
  `id` int(11) DEFAULT NULL,
  `team` char(6) DEFAULT NULL,
  `faculty` char(6) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  KEY `table2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table2`
--

LOCK TABLES `table2` WRITE;
/*!40000 ALTER TABLE `table2` DISABLE KEYS */;
INSERT INTO `table2` VALUES (1,'pmi72','FPMI',92),(2,'pmi72','FPMI',56),(3,'pmi71','FPMI',84),(4,'pmi71','FPMI',64),(5,'pmi71','FPMI',66),(6,'avt718','AVTF',87),(7,'avt719','AVTF',72),(8,'avt719','AVTF',56),(9,'avt719','AVTF',74),(10,'pmi71','FPMI',70),(11,'avt718','AVTF',97),(12,'pmi72','FPMI',69),(13,'avt719','AVTF',52),(14,'pmi71','FPMI',96),(15,'avt719','AVTF',82),(16,'avt719','AVTF',72),(17,'avt718','AVTF',50),(18,'avt719','AVTF',55),(19,'avt718','AVTF',67),(20,'avt719','AVTF',95),(21,'avt718','AVTF',94),(22,'pmi71','FPMI',70),(23,'avt719','AVTF',55),(24,'avt719','AVTF',92),(25,'avt719','AVTF',64),(26,'avt718','AVTF',65),(27,'pmi72','FPMI',73),(28,'avt719','AVTF',84),(29,'pmi71','FPMI',50),(30,'pmi71','FPMI',90),(31,'pmi72','FPMI',73),(32,'avt718','AVTF',69),(33,'avt719','AVTF',64),(34,'avt718','AVTF',62),(35,'avt719','AVTF',71),(36,'avt719','AVTF',88),(37,'avt719','AVTF',57),(38,'pmi71','FPMI',99),(39,'pmi72','FPMI',78),(40,'pmi71','FPMI',95),(41,'avt719','AVTF',56),(42,'avt719','AVTF',77),(43,'pmi72','FPMI',55),(44,'avt719','AVTF',50),(45,'avt719','AVTF',79),(46,'avt718','AVTF',58),(47,'avt718','AVTF',51),(48,'pmi72','FPMI',53),(49,'pmi71','FPMI',71),(50,'avt719','AVTF',54),(51,'pmi72','FPMI',57),(52,'avt718','AVTF',76),(53,'pmi72','FPMI',78),(54,'avt718','AVTF',84),(55,'avt718','AVTF',81),(56,'avt718','AVTF',89),(57,'pmi71','FPMI',81),(58,'avt719','AVTF',76),(59,'avt718','AVTF',56),(60,'avt718','AVTF',58),(61,'avt719','AVTF',71),(62,'avt718','AVTF',72),(63,'avt719','AVTF',59),(64,'pmi72','FPMI',80),(65,'pmi71','FPMI',53),(66,'avt719','AVTF',70),(67,'pmi72','FPMI',76),(68,'pmi72','FPMI',57),(69,'avt718','AVTF',92),(70,'avt719','AVTF',63),(71,'avt718','AVTF',85),(72,'avt719','AVTF',73),(73,'pmi72','FPMI',62),(74,'pmi72','FPMI',61),(75,'pmi72','FPMI',73),(76,'avt719','AVTF',88),(77,'pmi72','FPMI',75),(78,'avt718','AVTF',95),(79,'pmi71','FPMI',69),(80,'avt719','AVTF',85),(81,'pmi71','FPMI',75),(82,'pmi71','FPMI',52),(83,'avt718','AVTF',60),(84,'pmi71','FPMI',71),(85,'avt718','AVTF',68),(86,'avt719','AVTF',98),(87,'pmi72','FPMI',96),(88,'pmi71','FPMI',95),(89,'pmi71','FPMI',65),(90,'avt718','AVTF',69),(91,'avt718','AVTF',50),(92,'pmi72','FPMI',90),(93,'avt718','AVTF',69),(94,'pmi72','FPMI',62),(95,'pmi71','FPMI',74),(96,'pmi72','FPMI',75),(97,'avt719','AVTF',99),(98,'avt718','AVTF',80),(99,'avt718','AVTF',82),(100,'pmi71','FPMI',61);
/*!40000 ALTER TABLE `table2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table3`
--

DROP TABLE IF EXISTS `table3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table3` (
  `id` int(11) DEFAULT NULL,
  `job` char(30) DEFAULT NULL,
  `city` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table3`
--

LOCK TABLES `table3` WRITE;
/*!40000 ALTER TABLE `table3` DISABLE KEYS */;
INSERT INTO `table3` VALUES (1,'Apple','Novokuznetsk'),(2,'Eltex2','Novosibirsk'),(3,'JetBrains','Novosibirsk'),(4,'Intel','Kemerovo'),(5,'Google','Irkutsk'),(6,'Yandex','Irkutsk'),(7,'JetBrains','Novosibirsk'),(8,'Tesla','Kemerovo'),(9,'Microsoft','Novokuznetsk'),(10,'Tesla','Kemerovo'),(11,'JetBrains','Novosibirsk'),(12,'Tesla','Kemerovo'),(13,'Eltex','Novosibirsk'),(14,'Tesla','Kemerovo'),(15,'Yandex','Irkutsk'),(16,'Microsoft','Novokuznetsk'),(17,'Eltex','Novosibirsk'),(18,'Eltex','Novosibirsk'),(19,'Google','Irkutsk'),(20,'Apple','Novokuznetsk'),(21,'JetBrains','Novosibirsk'),(22,'Yandex','Irkutsk'),(23,'Apple','Novokuznetsk'),(24,'Yandex','Irkutsk'),(25,'JetBrains','Novosibirsk'),(26,'Tesla','Kemerovo'),(27,'Apple','Novokuznetsk'),(28,'Microsoft','Novokuznetsk'),(29,'Tesla','Kemerovo'),(30,'Apple','Novokuznetsk'),(31,'Google','Irkutsk'),(32,'JetBrains','Novosibirsk'),(33,'Microsoft','Novokuznetsk'),(34,'Eltex','Novosibirsk'),(35,'Apple','Novokuznetsk'),(36,'Google','Irkutsk'),(37,'Eltex','Novosibirsk'),(38,'Google','Irkutsk'),(39,'Eltex','Novosibirsk'),(40,'Eltex','Novosibirsk'),(41,'Apple','Novokuznetsk'),(42,'Apple','Novokuznetsk'),(43,'Yandex','Irkutsk'),(44,'Eltex','Novosibirsk'),(45,'Intel','Kemerovo'),(46,'Apple','Novokuznetsk'),(47,'Apple','Novokuznetsk'),(48,'Intel','Kemerovo'),(49,'JetBrains','Novosibirsk'),(50,'Yandex','Irkutsk'),(51,'Google','Irkutsk'),(52,'Apple','Novokuznetsk'),(53,'Apple','Novokuznetsk'),(54,'Eltex','Novosibirsk'),(55,'Google','Irkutsk'),(56,'Apple','Novokuznetsk'),(57,'Yandex','Irkutsk'),(58,'Tesla','Kemerovo'),(59,'Tesla','Kemerovo'),(60,'Eltex','Novosibirsk'),(61,'Tesla','Kemerovo'),(62,'Google','Irkutsk'),(63,'Microsoft','Novokuznetsk'),(64,'Yandex','Irkutsk'),(65,'Microsoft','Novokuznetsk'),(66,'JetBrains','Novosibirsk'),(67,'Intel','Kemerovo'),(68,'Tesla','Kemerovo'),(69,'Microsoft','Novokuznetsk'),(70,'Google','Irkutsk'),(71,'Microsoft','Novokuznetsk'),(72,'Google','Irkutsk'),(73,'Google','Irkutsk'),(74,'Apple','Novokuznetsk'),(75,'Intel','Kemerovo'),(76,'Intel','Kemerovo'),(77,'Microsoft','Novokuznetsk'),(78,'JetBrains','Novosibirsk'),(79,'Microsoft','Novokuznetsk'),(80,'Eltex','Novosibirsk'),(81,'JetBrains','Novosibirsk'),(82,'Tesla','Kemerovo'),(83,'Intel','Kemerovo'),(84,'Intel','Kemerovo'),(85,'Intel','Kemerovo'),(86,'Google','Irkutsk'),(87,'Eltex','Novosibirsk'),(88,'Tesla','Kemerovo'),(89,'Apple','Novokuznetsk'),(90,'Apple','Novokuznetsk'),(91,'Intel','Kemerovo'),(92,'Google','Irkutsk'),(93,'Tesla','Kemerovo'),(94,'Apple','Novokuznetsk'),(95,'Eltex','Novosibirsk'),(96,'Apple','Novokuznetsk'),(97,'Apple','Novokuznetsk'),(98,'Apple','Novokuznetsk'),(99,'Intel','Kemerovo'),(100,'Apple','Novokuznetsk');
/*!40000 ALTER TABLE `table3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table4`
--

DROP TABLE IF EXISTS `table4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table4`
--

LOCK TABLES `table4` WRITE;
/*!40000 ALTER TABLE `table4` DISABLE KEYS */;
INSERT INTO `table4` VALUES (1,'tratata','secretpassword',1),(2,'user','test',2);
/*!40000 ALTER TABLE `table4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table5`
--

DROP TABLE IF EXISTS `table5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `faculty` char(16) DEFAULT NULL,
  `team` char(16) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table5`
--

LOCK TABLES `table5` WRITE;
/*!40000 ALTER TABLE `table5` DISABLE KEYS */;
INSERT INTO `table5` VALUES (1,'AVTF','avt718'),(2,'AVTF','avt719'),(3,'FPMI','pmi71'),(4,'FPMI','pmi72');
/*!40000 ALTER TABLE `table5` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-15 13:46:31
