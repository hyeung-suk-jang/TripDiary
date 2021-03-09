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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `useridx` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `replyYN` varchar(1) NOT NULL,
  `contents` text NOT NULL,
  `filepath` varchar(200) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguser` varchar(50) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'jack','gkb10a@naver.com','할인적용-1604574403600','N','few','uploads/etc/할인적용-1604574403600.vnd.openxmlformats-officedocument.spreadsheetml.sheet','2020-11-05 20:06:43','하경윤','2020-11-05 20:06:43','하경윤'),(2,'test','gkb10a@naver.com','나눔유저표(개편).xls','Y','Testing...','uploads/etc/2020_11_6/etc-1604622088844-vnd.ms-excel','2020-11-06 09:21:28','테스트','2020-11-08 15:10:15','테스트'),(3,'travel','gkb10a@naver.com','성공적인_인스타그램_마케팅을_위한_필수_정보_모음.xls','Y','few','uploads/etc/2020_11_6/etc-1604622191367-vnd.ms-excel','2020-11-06 09:23:11','테스트','2020-11-08 14:41:35','테스트');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
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
