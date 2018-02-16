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
-- Table structure for table `inspection`
--

DROP TABLE IF EXISTS `inspection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspection` (
  `inspection_id` int(11) NOT NULL,
  `inspection_date` date DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`inspection_id`),
  KEY `pid` (`pid`),
  KEY `cid` (`cid`),
  CONSTRAINT `inspection_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `person` (`pid`),
  CONSTRAINT `inspection_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `component` (`component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspection`
--

LOCK TABLES `inspection` WRITE;
/*!40000 ALTER TABLE `inspection` DISABLE KEYS */;
INSERT INTO `inspection` VALUES (1,'2010-02-14','legacy code which is already approve',100,10100,1,'Ready'),(2,'2017-06-01','initial release ready for usage',95,10200,2,'Ready'),(3,'2010-02-22','too many hard coded parameters, the software must be \n                      more maintainable and configurable because we want to use this in other products.',55,10100,3,'Not ready'),(4,'2010-02-24','improved, but only handles DB2 format',78,10100,3,'qUsable'),(5,'2010-02-26','Okay, handles DB3 format.',95,10100,3,'Ready'),(6,'2010-02-28','satisifed',100,10100,3,'Ready'),(7,'2011-05-01','Okay ready for use',100,10200,4,'Ready'),(8,'2017-07-15','Okay ready for beta testing',80,10300,6,'qUsable'),(9,'2014-06-10','almost ready',90,10100,7,'Ready'),(10,'2014-06-15','Accuracy problems!',70,10100,8,'Not ready'),(11,'2014-06-30','Okay problems fixed',100,10100,8,'Ready'),(12,'2016-11-02','re-review for new employee to gain experience in the process.',100,10400,8,'Ready'),(13,'2017-08-15','needs rework,introduced new errors',60,10400,6,'Not ready'),(14,'2017-11-20','minor fixes needed',80,10500,9,'qUsable'),(15,'2016-11-02','re-review for new employee to gain experience in the process.',-10,10300,8,NULL),(16,'2016-11-02','re-review for new employee to gain experience in the process.',-10,10300,8,NULL),(18,'2017-12-01','ok',95,NULL,1,'Ready'),(25,'2017-12-01','ok',95,10100,5,'Ready'),(26,'2017-12-02','ok',55,10100,3,'Not ready');
/*!40000 ALTER TABLE `inspection` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-16 15:36:23
