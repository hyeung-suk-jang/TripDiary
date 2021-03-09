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
-- Table structure for table `nationcodes`
--

DROP TABLE IF EXISTS `nationcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nationcodes` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `koreanname` varchar(50) NOT NULL,
  `englishname` varchar(50) NOT NULL,
  `code3` varchar(3) NOT NULL,
  `code2` varchar(2) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguser` varchar(50) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationcodes`
--

LOCK TABLES `nationcodes` WRITE;
/*!40000 ALTER TABLE `nationcodes` DISABLE KEYS */;
INSERT INTO `nationcodes` VALUES (1,'대한민국','KOREA','KOR','KO','2020-11-01 22:30:59','테스트','2020-11-01 22:30:59','테스트'),(2,'일본','Japen','JAP','JP','2020-11-02 18:44:56','테스트','2020-11-02 18:44:56','테스트'),(3,'','','','','2020-11-08 11:17:14','테스트','2020-11-08 11:17:14','테스트'),(4,'','','','','2020-11-08 11:17:18','테스트','2020-11-08 11:17:18','테스트'),(5,'','','','','2020-11-08 11:17:25','테스트','2020-11-08 11:17:25','테스트');
/*!40000 ALTER TABLE `nationcodes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-21 19:50:17
