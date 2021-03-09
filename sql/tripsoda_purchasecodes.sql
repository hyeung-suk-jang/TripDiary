-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tripsoda
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `purchasecodes`
--

DROP TABLE IF EXISTS `purchasecodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchasecodes` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `purchasedate` varchar(50) NOT NULL,
  `purchasetype` varchar(1) NOT NULL,
  `codenumber` varchar(6) DEFAULT NULL,
  `price` int NOT NULL,
  `purchaseuser` varchar(50) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguser` varchar(50) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchasecodes`
--

LOCK TABLES `purchasecodes` WRITE;
/*!40000 ALTER TABLE `purchasecodes` DISABLE KEYS */;
INSERT INTO `purchasecodes` VALUES (1,'2020-11-01T15:00:00.000Z','3','OdODs0',321321,'fewfew','2020-11-05 10:44:34','하경윤','2020-11-05 10:44:34','하경윤'),(2,'2020-11-18T15:00:00.000Z','3','8r8F7Q',321321312,'fewfew','2020-11-12 21:47:14','테스트','2020-11-12 21:47:14','테스트'),(3,'2020-11-09T15:00:00.000Z','3','8r8F7Q',432423423,'fewfwefwefwe','2020-11-12 21:47:23','테스트','2020-11-12 21:47:23','테스트'),(4,'2020-12-09T15:00:00.000Z','3','AFnDRZ',12321,'fewfewfwe','2020-11-12 21:48:48','테스트','2020-11-12 21:48:48','테스트');
/*!40000 ALTER TABLE `purchasecodes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-21 19:50:19
