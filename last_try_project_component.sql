-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: last_try_project
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component` (
  `component_id` int(11) NOT NULL,
  `component_name` varchar(30) DEFAULT NULL,
  `version` char(3) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `language` enum('C','C++','C#','Java','PHP','javascript') DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `cstatus` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`component_id`),
  KEY `owner_id` (`owner_id`),
  CONSTRAINT `component_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `person` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
INSERT INTO `component` VALUES (1,'Keyboard Driver','K11',1200,'C',10100,'Ready'),(2,'Touch Screen Driver','T00',4000,'C++',10100,'Ready'),(3,'Dbase Interface','D00',2500,'C++',10200,'Not ready'),(4,'Dbase Interface','D01',2500,'C++',10300,'Ready'),(5,'Chart generator','C11',6500,'Java',10200,'Ready'),(6,'Pen driver','P01',3575,'C',10400,'Not ready'),(7,'Math unit','A01',5000,'C',10200,'Ready'),(8,'Math unit','A02',3500,'Java',10200,'Ready'),(9,'Dynamic Table Interface','D01',775,'javascript',10400,'qUsable');
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-16 15:36:22
