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
-- Table structure for table `tourpictures`
--

DROP TABLE IF EXISTS `tourpictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourpictures` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `touridx` int NOT NULL,
  `mainpicYN` varchar(1) NOT NULL,
  `seq` int NOT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguser` varchar(50) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourpictures`
--

LOCK TABLES `tourpictures` WRITE;
/*!40000 ALTER TABLE `tourpictures` DISABLE KEYS */;
INSERT INTO `tourpictures` VALUES (1,2,'Y',0,'7.png','uploads/image/2020_11_14/image-1605321003408-png','2020-11-14 11:30:03','테스트','2020-11-14 11:30:03','테스트'),(2,2,'N',1,'7.png','uploads/image/2020_11_14/image-1605321003420-png','2020-11-14 11:30:03','테스트','2020-11-14 11:30:03','테스트'),(3,2,'N',2,'7.png','uploads/image/2020_11_14/image-1605321003429-png','2020-11-14 11:30:03','테스트','2020-11-14 11:30:03','테스트'),(4,2,'N',3,'7.png','uploads/image/2020_11_14/image-1605321003438-png','2020-11-14 11:30:03','테스트','2020-11-14 11:30:03','테스트'),(5,2,'Y',0,'7.png','uploads/image/2020_11_14/image-1605321287114-png','2020-11-14 11:34:47','테스트','2020-11-14 11:34:47','테스트'),(6,2,'N',1,'7.png','uploads/image/2020_11_14/image-1605321287120-png','2020-11-14 11:34:47','테스트','2020-11-14 11:34:47','테스트'),(7,2,'N',3,'7.png','uploads/image/2020_11_14/image-1605321287130-png','2020-11-14 11:34:47','테스트','2020-11-14 11:34:47','테스트'),(8,2,'N',2,'7.png','uploads/image/2020_11_14/image-1605321287142-png','2020-11-14 11:34:47','테스트','2020-11-14 11:34:47','테스트'),(9,4,'Y',0,'스크립트4.m4a','uploads/audio/2020_11_14/audio-1605327758478-x-m4a','2020-11-14 13:22:38','테스트','2020-11-14 13:22:38','테스트');
/*!40000 ALTER TABLE `tourpictures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-21 19:50:15
