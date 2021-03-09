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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `birthday` datetime NOT NULL,
  `telnumber` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `emailaree` varchar(1) DEFAULT NULL,
  `messageagree` varchar(1) DEFAULT NULL,
  `pushagree` varchar(1) DEFAULT NULL,
  `etc` text NOT NULL,
  `inextroversion` int NOT NULL,
  `profilename` varchar(100) NOT NULL,
  `profilepath` varchar(200) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguser` varchar(50) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'few','fewfew','fewfew1!','1900-01-01 09:00:00','01092066598','few','gkb10a@naver.com','대한민국 서울특별시 용산구 후암동 44-13',NULL,'N','N','',0,'56303983c5365db31b9b28e6da5d84b8-1604209103652.jpeg','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\56303983c5365db31b9b28e6da5d84b8-1604209103652.jpeg','2020-11-01 14:38:23','테스트','2020-11-01 14:38:23','테스트'),(2,'fewfew','fewww','fewfew1!','1991-01-09 08:27:52','111','few','few@naver.com','대한민국 서울특별시 영등포구 문래동1가 51-2',NULL,'N','N','',3,'4-1604209424318.png','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\4-1604209424318.png','2020-11-01 14:43:44','테스트','2020-11-01 14:43:44','테스트'),(3,'few','','fewfew1!','1900-01-01 09:00:00','','','','',NULL,'N','N','',0,'56303983c5365db31b9b28e6da5d84b8-1604209746840.jpeg','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\56303983c5365db31b9b28e6da5d84b8-1604209746840.jpeg','2020-11-01 14:49:06','테스트','2020-11-01 14:49:06','테스트'),(4,'few','','fewfew1!','1900-01-01 09:00:00','','','','',NULL,'N','N','',0,'56303983c5365db31b9b28e6da5d84b8-1604209948888.jpeg','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\56303983c5365db31b9b28e6da5d84b8-1604209948888.jpeg','2020-11-01 14:52:28','테스트','2020-11-01 14:52:28','테스트'),(5,'fewfew','','fewfew1!','1900-01-01 09:00:00','','','','',NULL,'N','N','',0,'20201031163002-1604209986119.png','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\20201031163002-1604209986119.png','2020-11-01 14:53:06','테스트','2020-11-01 14:53:06','테스트'),(6,'fewfew','','fewfwe1!','1900-01-01 09:00:00','','','','',NULL,'N','N','',0,'56303983c5365db31b9b28e6da5d84b8-1604210055591.jpeg','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\56303983c5365db31b9b28e6da5d84b8-1604210055591.jpeg','2020-11-01 14:54:15','테스트','2020-11-01 14:54:15','테스트'),(7,'few','','fewfwe1!','1900-01-01 09:00:00','','','','',NULL,'N','N','',0,'background (1)-1604210107548.jpeg','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\background (1)-1604210107548.jpeg','2020-11-01 14:55:07','테스트','2020-11-01 14:55:07','테스트'),(8,'few','','fewfew1!','1900-01-01 09:00:00','','','','',NULL,'N','N','',0,'56303983c5365db31b9b28e6da5d84b8-1604210125124.jpeg','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\56303983c5365db31b9b28e6da5d84b8-1604210125124.jpeg','2020-11-01 14:55:25','테스트','2020-11-01 14:55:25','테스트'),(9,'few','few','fewfew1!','1900-01-01 09:00:00','1','1','gkb10a@naver.com','대한민국 서울특별시 관악구 서원동 10-661',NULL,'N','N','',-1,'56303983c5365db31b9b28e6da5d84b8-1604210437624.jpeg','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\56303983c5365db31b9b28e6da5d84b8-1604210437624.jpeg','2020-11-01 15:00:37','테스트','2020-11-01 15:00:37','테스트'),(10,'few','few','fwefew1!','1900-01-01 09:00:00','1','111','gkb10a@naver.com','대한민국 경기도 과천시 주암동 562-3',NULL,'N','N','',0,'background (1)-1604210520667.jpeg','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\background (1)-1604210520667.jpeg','2020-11-01 15:02:00','테스트','2020-11-01 15:02:00','테스트'),(11,'few','fewfew','fewfew1!','1900-01-01 09:00:00','1','111','gkb10a@naver.com','',NULL,'N','N','',0,'background (1)-1604210621049.jpeg','C:\\Users\\gkb10\\Desktop\\tropsoda\\tripsoda_server\\routes\\uploads\\image\\background (1)-1604210621049.jpeg','2020-11-01 15:03:41','테스트','2020-11-01 15:03:41','테스트'),(12,'few','few','fewfew1!','1990-01-24 09:00:00','01092066598','few','few@naver.com','대한민국 서울특별시 용산구 용산동6가 1-1',NULL,'Y','Y','',3,'56303983c5365db31b9b28e6da5d84b8-1604216651728.jpeg','\\uploads\\image\\56303983c5365db31b9b28e6da5d84b8-1604216651728.jpeg','2020-11-01 16:44:11','테스트','2020-11-01 16:44:11','테스트'),(13,'fewssssszfewx','','fewfew1!','1990-01-01 09:00:00','','','','',NULL,'N','N','',0,'56303983c5365db31b9b28e6da5d84b8-1604537519233.jpeg','uploads/image/56303983c5365db31b9b28e6da5d84b8-1604537519233.jpeg','2020-11-05 09:51:59','하경윤','2020-11-05 09:51:59','하경윤'),(14,'ㄹㄷㅈ','','fewfew1!','1990-01-01 09:00:00','','','','',NULL,'N','N','',0,'image-1604619089734-jpeg','uploads/image/image-1604619089734-jpeg','2020-11-06 08:31:29','하경윤','2020-11-06 08:31:29','하경윤'),(15,'ㄹㄷㅈ','zzzzew','fewfew1!','1990-01-01 09:00:00','1','12','','',NULL,'N','N','',0,'56303983c5365db31b9b28e6da5d84b8.jpg','uploads/image/2020_11_6/image-1604629135710-jpeg','2020-11-06 11:18:55','하경윤','2020-11-06 11:18:55','하경윤'),(16,'few','fewfewfew','few12321111!','1990-01-01 09:00:00','1','wf','','',NULL,'N','N','',0,'56303983c5365db31b9b28e6da5d84b8.jpg','uploads/image/2020_11_6/image-1604631518789-jpeg','2020-11-06 11:58:38','테스트','2020-11-06 11:58:38','테스트');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
