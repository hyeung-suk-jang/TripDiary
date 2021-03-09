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
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `tourname` varchar(50) NOT NULL,
  `nationtype` varchar(1) NOT NULL,
  `nationcodeidx` varchar(20) NOT NULL,
  `areacodeidx` varchar(20) NOT NULL,
  `tourcode` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `telnumber` varchar(50) NOT NULL,
  `admissionfee` varchar(10) NOT NULL,
  `operatingtime` varchar(50) NOT NULL,
  `interesttag` varchar(50) NOT NULL,
  `inextroversion` int NOT NULL,
  `openclose` int NOT NULL,
  `subaudioYN` varchar(1) NOT NULL,
  `mainaudioYN` varchar(1) NOT NULL,
  `lat` decimal(11,4) NOT NULL,
  `lng` decimal(11,4) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguser` varchar(50) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (1,'11','1','1','2','111','대한민국 서울특별시 마포구 도화동 48-5','111','111','7:00 pm - 8:15 pm','',0,0,'N','N',37.5395,126.9453,'2020-11-13 19:33:58','테스트','2020-11-13 19:33:58','테스트'),(2,'관광지명','1','1','2','1','대한민국 서울특별시 영등포구 양평동 502-1','1111','1111','10:30 am - 11:15 am','',0,0,'N','N',37.5410,126.8885,'2020-11-14 10:50:05','테스트','2020-11-14 10:50:05','테스트'),(3,'관광지명','1','1','2','1','대한민국 서울특별시 마포구 서교동 399-12','1','1','10:00 am - 11:00 am','',0,0,'N','N',37.5493,126.9182,'2020-11-14 10:53:24','테스트','2020-11-14 10:53:24','테스트'),(4,'관광지명','1','1','2','111','대한민국 서울특별시 관악구 성현동 은천로39길 92-9','11','111','12:45 pm - 1:15 pm','sports, shopping, enjoy',0,0,'N','N',37.4893,126.9533,'2020-11-14 13:22:38','테스트','2020-11-14 13:22:38','테스트');
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-21 19:50:16
