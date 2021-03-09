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
-- Table structure for table `areacodes`
--

DROP TABLE IF EXISTS `areacodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areacodes` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `nationcodeidx` int NOT NULL,
  `sidocode` varchar(10) NOT NULL,
  `sidoname` varchar(50) NOT NULL,
  `areacode` varchar(10) NOT NULL,
  `areaname` varchar(50) NOT NULL,
  `mainpicYN` varchar(1) DEFAULT NULL,
  `mainpicname` varchar(100) DEFAULT NULL,
  `mainpicpath` varchar(100) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguser` varchar(50) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areacodes`
--

LOCK TABLES `areacodes` WRITE;
/*!40000 ALTER TABLE `areacodes` DISABLE KEYS */;
INSERT INTO `areacodes` VALUES (1,1,'G','강원','Y','영월','Y',NULL,NULL,'2020-11-03 16:46:41','하경윤','2020-11-06 11:34:02','테스트'),(2,1,'G','강원','K','강릉','Y',NULL,NULL,'2020-11-03 16:48:18','하경윤','2020-11-03 16:48:18','하경윤'),(3,1,'G','강원','I','인제','Y',NULL,NULL,'2020-11-03 16:48:39','하경윤','2020-11-03 16:48:39','하경윤'),(4,1,'G','강원','H','홍천','Y',NULL,NULL,'2020-11-03 16:48:48','하경윤','2020-11-03 16:48:48','하경윤'),(5,1,'G','강원','H','홍천','Y',NULL,NULL,'2020-11-03 16:49:24','하경윤','2020-11-03 16:49:24','하경윤'),(6,1,'G','강원','H','홍천','Y',NULL,NULL,'2020-11-03 16:51:09','하경윤','2020-11-03 16:51:09','하경윤'),(7,1,'G','강원','H','홍천','Y','56303983c5365db31b9b28e6da5d84b8-1604389912379.jpeg','/uploads/image/56303983c5365db31b9b28e6da5d84b8-1604389912379.jpeg','2020-11-03 16:51:52','하경윤','2020-11-03 16:51:52','하경윤'),(8,1,'G','강원','Y','영월','Y','56303983c5365db31b9b28e6da5d84b8-1604389950964.jpeg','/uploads/image/56303983c5365db31b9b28e6da5d84b8-1604389950964.jpeg','2020-11-03 16:52:30','하경윤','2020-11-03 16:52:30','하경윤'),(9,1,'G','강원','I','인제','Y','56303983c5365db31b9b28e6da5d84b8-1604389995501.jpeg','/uploads/image/56303983c5365db31b9b28e6da5d84b8-1604389995501.jpeg','2020-11-03 16:53:15','하경윤','2020-11-03 16:53:15','하경윤'),(10,1,'G','강원','Y','영월','Y','다운로드-1604395262938.png','uploads/image/다운로드-1604395262938.png','2020-11-03 18:18:04','하경윤','2020-11-03 18:21:03','하경윤'),(11,1,'S','서울','K','강남','Y','56303983c5365db31b9b28e6da5d84b8-1604537590109.jpeg','uploads/image/56303983c5365db31b9b28e6da5d84b8-1604537590109.jpeg','2020-11-05 09:53:10','하경윤','2020-11-05 09:53:10','하경윤');
/*!40000 ALTER TABLE `areacodes` ENABLE KEYS */;
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
