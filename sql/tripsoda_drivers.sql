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
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `drivername` varchar(100) DEFAULT NULL,
  `id` varchar(50) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `nationtype` varchar(1) DEFAULT NULL,
  `nationcodeidx` varchar(255) DEFAULT NULL,
  `areacodeidx` varchar(255) DEFAULT NULL,
  `birthday` varchar(50) NOT NULL,
  `telnumber` varchar(50) NOT NULL,
  `cartype` varchar(50) DEFAULT NULL,
  `carnumber` varchar(50) DEFAULT NULL,
  `carlicense` varchar(100) DEFAULT NULL,
  `businesstype` varchar(1) DEFAULT NULL,
  `grade` decimal(3,2) DEFAULT NULL,
  `etc` text NOT NULL,
  `businessname` varchar(100) DEFAULT NULL,
  `driverpath` varchar(200) DEFAULT NULL,
  `licensename` varchar(100) DEFAULT NULL,
  `licensepath` varchar(200) DEFAULT NULL,
  `carname` varchar(100) DEFAULT NULL,
  `carpath` varchar(200) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguser` varchar(50) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,NULL,'few','fewfew1!','1','1','','1990-01-01T00:00:00.000Z','1','few1','few1','321321','1',9.99,'321321','321','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:33:03','테스트','2020-11-01 16:33:03','테스트'),(2,NULL,'few','fewfew1!','1','1','','1990-01-01T00:00:00.000Z','1','few1','few1','321321','1',9.99,'321321','321','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:33:38','테스트','2020-11-01 16:33:38','테스트'),(3,NULL,'few','fewfew1!','1','1','','1990-01-01T00:00:00.000Z','1','few1','few1','321321','1',9.99,'321321','321','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:34:56','테스트','2020-11-01 16:34:56','테스트'),(4,NULL,'few','fewfew1!','1','1','','1990-01-01T00:00:00.000Z','1','few1','few1','321321','1',0.00,'321321','321','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:39:04','테스트','2020-11-01 16:39:04','테스트'),(5,NULL,'few','fewfew1!','1','1','','1990-01-01T00:00:00.000Z','1','few1','few1','321321','1',0.00,'321321','321','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:39:37','테스트','2020-11-01 16:39:37','테스트'),(6,NULL,'few','fewfew1!','1','1','','1990-01-01T00:00:00.000Z','1','few1','few1','321321','1',0.00,'321321','321','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:42:24','테스트','2020-11-01 16:42:24','테스트'),(7,NULL,'few','fewfew1!','1','1','','1990-01-01T00:00:00.000Z','1','few1','few1','321321','1',0.00,'321321','321','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:42:29','테스트','2020-11-01 16:42:29','테스트'),(8,NULL,'few','fewfew1!','1','1','2','1990-01-18T00:00:00.000Z','11','ew','few','few','1',0.00,'fewfew','few','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:47:06','테스트','2020-11-01 16:47:06','테스트'),(9,NULL,'few','fewfew1!','1','1','2','1990-01-18T00:00:00.000Z','11','ew','few','few','1',0.00,'fewfew','few','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:48:25','테스트','2020-11-01 16:48:25','테스트'),(10,NULL,'few','fewfew1!','1','1','2','1990-01-18T00:00:00.000Z','11','ew','few','few','1',0.00,'fewfew','few','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:48:39','테스트','2020-11-01 16:48:39','테스트'),(11,NULL,'few','fewfew1!','1','1','2','1990-01-18T00:00:00.000Z','11','ew','few','few','1',0.00,'fewfew','few','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:48:59','테스트','2020-11-01 16:48:59','테스트'),(12,NULL,'few','fewfew1!','1','1','2','1990-01-18T00:00:00.000Z','11','ew','few','few','1',0.00,'fewfew','few','/uploads/image/undefined',NULL,'/uploads/image/undefined',NULL,'/uploads/image/undefined','2020-11-01 16:49:21','테스트','2020-11-01 16:49:21','테스트'),(13,'56303983c5365db31b9b28e6da5d84b8-1604217239999.jpeg','few','fewfew1!','1','1','2','1990-01-18T00:00:00.000Z','11','ew','few','few','1',0.00,'fewfew','few','/uploads/image/56303983c5365db31b9b28e6da5d84b8-1604217239999.jpeg','1-1604217240019.png','/uploads/image/1-1604217240019.png','background (1)-1604217240013.jpeg','/uploads/image/background (1)-1604217240013.jpeg','2020-11-01 16:54:00','테스트','2020-11-01 16:54:00','테스트'),(14,'few','fewzzzzz','1!fewfew1','1','1','','1990-01-01T00:00:00.000Z','1','','','','1',0.00,'','',NULL,NULL,NULL,NULL,NULL,'2020-11-05 09:49:30','하경윤','2020-11-05 09:49:30','하경윤'),(15,'56303983c5365db31b9b28e6da5d84b8.jpg','fewfwesssc','fewfew1!','1','1','','1990-01-01T00:00:00.000Z','0','','','','1',0.00,'','','uploads/image/2020_11_6/image-1604620456203-jpeg','background.jpg','uploads/image/2020_11_6/image-1604620456223-jpeg','imageCDN_1.png','uploads/image/2020_11_6/image-1604620456218-png','2020-11-06 08:54:16','하경윤','2020-11-06 08:54:16','하경윤'),(16,'56303983c5365db31b9b28e6da5d84b8.jpg','fewwwsx','fewfew1!','1','1','','1990-01-01T00:00:00.000Z','1','','','','1',0.00,'','','uploads/image/2020_11_6/image-1604629169192-jpeg','background.jpg','uploads/image/2020_11_6/image-1604629169198-jpeg','imageCDN_1.png','uploads/image/2020_11_6/image-1604629169196-png','2020-11-06 11:19:29','하경윤','2020-11-06 11:19:29','하경윤');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-21 19:50:18
