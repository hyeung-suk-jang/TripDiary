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
-- Table structure for table `pushes`
--

DROP TABLE IF EXISTS `pushes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pushes` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `target` int NOT NULL,
  `linkinfo` varchar(100) NOT NULL,
  `contents` text NOT NULL,
  `messageYN` varchar(1) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguser` varchar(50) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pushes`
--

LOCK TABLES `pushes` WRITE;
/*!40000 ALTER TABLE `pushes` DISABLE KEYS */;
INSERT INTO `pushes` VALUES (1,'ㄹㄷㅈㄹㄷㅈ',1321,'ㄹㄷㅈㄹㄷㅈ','ㄹㄷㅈㄹㄷㅈ1','N','2020-11-06 10:57:06','테스트','2020-11-06 13:54:50','테스트'),(2,'ㄹㄷㅈㄹㅈㄷ',3,'ㄹㄹㄷㅈ','ㄹㄷㅈㄹㅈㄷ','N','2020-11-06 10:57:34','하경윤','2020-11-06 10:57:34','하경윤'),(3,'ㄹㄷㅈㄹㄷㅈ',333322,'ㄹㄷㅈㄹㅈㄷ','ㄹㄷㅈㄴㄴㄴ','N','2020-11-06 10:57:42','테스트','2020-11-06 13:21:41','테스트'),(4,'few',1,'few','fewdfwf','Y','2020-11-06 11:21:43','테스트','2020-11-06 11:21:43','테스트');
/*!40000 ALTER TABLE `pushes` ENABLE KEYS */;
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
