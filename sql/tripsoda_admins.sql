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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `level` int NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `telnumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `englishname` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `entryYear` varchar(4) DEFAULT NULL,
  `duty` int DEFAULT NULL,
  `department` int DEFAULT NULL,
  `etc` text,
  `regdate` datetime DEFAULT NULL,
  `reguser` varchar(50) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx` (`idx`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'fewfew','fewfew','$2a$10$/9pLrDqg6tzkTiFMm9i0VOUOecIdgslqrdkEtEutctIZFaaSMhfQ6',2,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-30 14:40:13','master','2020-10-30 14:40:14',NULL),(16,'few','fewfwe','$2a$10$6H0nqAUrGN0hIO/kNm7OhuEUJ9OfPWptHxAasF1PCUWVzplG7StQy',2,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-30 15:37:53','master','2020-10-30 15:37:54',NULL),(23,'few','fewfew2','$2a$10$fOUqA6PYHNOhetZPSWZAqe.baVGvkARlr/suveh9Nulca7J/3EdAK',2,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-30 16:29:19','master','2020-10-30 16:29:19',NULL),(28,'few','fewfwef','$2a$10$AMf7r7FO30SmoXeLTAZ6aeGN7Vmf4JmnXQFNIcHIu8bK.6foMGsKK',2,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-30 21:07:28','master','2020-10-30 21:07:29',NULL),(29,'하경윤','aaaaa','$2a$10$65Ho3GIaa.oKgZEL7YWtou5LRdZGirNPogPH3qZxARSYpAtRcUKei',2,'1900-01-01 09:00:00','','aaaaa@naver.com','','','',1,1,'','2020-10-30 21:53:44','master','2020-10-30 21:53:45',NULL),(30,'yoon','bbbbb','$2a$10$phiqdHWud6EqYm2jJWW8s.wA1QK0oJcJTQKUod84ImV8TCoJFl1MW',1,'2001-01-17 08:27:52','01092066598','gkb10a@naver.com','yoon','대한민국 서울특별시 강남구 역삼1동 테헤란로10길 7','2001',4,3,'few','2020-10-31 10:17:44','하경윤','2020-10-31 10:17:44',NULL),(31,'yoon','ccccc','$2a$10$IVhQf.YTPAbzCIddJYliN.Lc2KujyxQ/Mlld9igP8W6JXMki7aWiy',1,'2001-01-17 08:27:52','01092066598','gkb10a@naver.com','yoon','대한민국 서울특별시 강남구 역삼1동 테헤란로10길 7','2001',4,3,'few','2020-10-31 10:28:53','하경윤','2020-10-31 10:28:54',NULL),(32,'yoon','ddddd','$2a$10$bgafGcbPEaLHoeXYlvDNzu5FOoKhxQRgX/01JaxciSTrs16aTox7i',1,'2001-01-17 08:27:52','01092066598','gkb10a@naver.com','yoon','대한민국 서울특별시 강남구 역삼1동 테헤란로10길 7','2001',4,3,'few','2020-10-31 10:29:27','하경윤','2020-10-31 10:29:27',NULL),(33,'테스트','eeeee','$2a$10$7BJsmugZXvKDpi8up5SdouAbs/LanPf2lvFJHiwbVGxJe2jq09FC2',1,'1900-01-01 09:00:00','','eeeee@naver.com','','','',1,1,'','2020-10-31 10:41:17','하경윤','2020-10-31 10:41:18',NULL),(34,'few','fewfwefew','$2a$10$B.F5gjr36ozqK4rG/zoObutrz4W1hUPidMpK0mczRVDrpqaVsRYx6',1,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-31 11:55:47','테스트','2020-10-31 11:55:47',NULL),(35,'few','fewfwefew2','$2a$10$b9.lNwH8ZBZDWq.gvIRNK.zQYSb53bhOWf2IHePqpbtCCnP5QkgiO',1,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-31 11:56:28','테스트','2020-10-31 11:56:28',NULL),(36,'few','fewfwefew2f','$2a$10$bYVuhK8s13BsaDrEPGUtIOKmvr.EWKgCEQxmNOb2Jza60k/QN2dxa',1,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-31 11:57:13','테스트','2020-10-31 11:57:13',NULL),(37,'few','fewfwefew2ff','$2a$10$AGcqttR1ae42v6atQftha.rup.iozuEn58dWFdgAYoPuvR6WX/hMy',1,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-31 11:58:52','테스트','2020-10-31 11:58:52',NULL),(38,'few','fewfwefew2fff','$2a$10$Rtt65SDHgp95lo4rD66SCOOXxtVx3IZ3zcAdhxIBdB31CkL0ZHwhC',1,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-31 11:59:13','테스트','2020-10-31 11:59:13',NULL),(39,'ㄹㄷㅈ','fewfewfews','$2a$10$ctR9Yp93QwhTZN3bbc3qc.lYPPFwJihpKUKn88f3f8xA2iFJARQmq',1,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-31 12:55:57','테스트','2020-10-31 12:55:57',NULL),(40,'aaaaa','fewfewdd','$2a$10$iBi5Ccmd0/FTjKaO56qLmuXTZCgKeVayCBxi1KBpzcsuk4/K5UEDW',1,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-10-31 13:05:14','테스트','2020-10-31 13:05:14',NULL),(41,'few','fewfwesss','$2a$10$2cEAUMrbbWV1aZekDcyJGOp9RCS7Q5gbfS3BZsnIwJHI3RkDHu6cS',1,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'few','2020-10-31 13:15:13','테스트','2020-10-31 13:15:13',NULL),(42,'few','sssss','$2a$10$axw9mz7ktrfpt44VbUZhS.drixfhg5wOgkFJr68BTcJ3bKW6A2ZNq',1,'1900-01-01 09:00:00','','sssss@naver.com','','','',1,1,'','2020-10-31 14:36:07','테스트','2020-10-31 14:36:07',NULL),(43,'few','sssssfew','$2a$10$9kPHZ/v/Gern14a4nZ9JZe6ZBTi3L3F/acDsvcNYlYv9l3jYdgjZq',1,'1900-01-01 09:00:00','','sssss@naver.com','','','',1,1,'','2020-10-31 14:40:38','테스트','2020-10-31 14:40:38',NULL),(44,'few','fewfwefs','$2a$10$Nu7IuozCKD9N/MpvTepkDeeEfrjwvmQBQM72hULVkcgDMJ7lbVoDi',1,'1900-01-01 09:00:00','','','','','',1,1,'','2020-10-31 17:31:11','테스트','2020-10-31 17:31:11',NULL),(45,'fewfew','fewfwewefwe','$2a$10$G1eOftAcVbWn6M4Yvqdihe0w0Dqz86Xp9LqFWHjMFLME91kNYdD0S',2,'1900-01-01 09:00:00','','','','','',1,1,'','2020-10-31 19:03:46','테스트','2020-10-31 19:03:46','테스트'),(46,'few','fewfews','$2a$10$uTKYDfb5lXsrt1T4E27ueOayZcZ0FV2sRdVRkgXVR.YwfvBUHBkMG',2,'1900-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-11-01 10:09:35','테스트','2020-11-01 10:09:36','테스트'),(47,'few','few','$2a$10$hvJWj0VZUoI4RbOt4xd1Cuc.BduLC1HtB3qaeVhifT.KccoJsMkFO',2,'1990-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-11-01 15:34:08','테스트','2020-11-01 15:34:08','테스트'),(48,'few','fewfwe1','$2a$10$qmF7Hw2MkWo.D4JsTX/eZubmGVFbxOlI5zDSjbG6SAdwh0dQot6hC',2,'1990-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-11-01 15:36:19','테스트','2020-11-01 15:36:19','테스트'),(49,'fewfew','fewfew1','$2a$10$WVSHwkM6K99o5Diw/QGaAeO14Duj5y.drQMHt7wLCtazkduUt80v.',2,'1990-01-01 09:00:00','','gkb10a@naver.com','','','',1,1,'','2020-11-06 11:21:10','테스트','2020-11-06 11:21:10','테스트'),(50,'few','fewfewssz','$2a$10$iskdgYbl61BM29ozTkG0TuNLJ94gRfh9pUJ04wVX0tDcdQ4gspR.u',2,'1990-01-01 09:00:00','','gkb10a@naver.com','','','',1,1,'','2020-11-08 14:29:42','테스트','2020-11-08 14:29:42','테스트'),(51,'few','fewg','$2a$10$AJ4lAis8cVOX8BnaOvovROipd7y2kAkRW8y6l3PzTk2DdHPhEA2Vq',2,'1990-01-01 09:00:00','','few@naver.com','','','',1,1,'','2020-11-08 14:34:37','테스트','2020-11-08 14:34:37','테스트'),(52,'few','fewddc','$2a$10$0Yi4gtaumEXVgJBfEa2WPeQC/8tyfztrSMAwADE85QNCdry.SmrDK',2,'2020-01-15 09:00:00','','gkb10a@naver.com','','','',1,1,'','2020-11-08 20:26:37','테스트','2020-11-08 20:26:38','테스트'),(53,'fewfew','zzzzzzzzzz','$2a$10$AtFGeRULBPCdlqCJFIrWGOWpfNZavdHdS/F72hhReOoDGXBmau9TG',2,'2020-02-13 09:00:00','','few@naver.com','','','',1,1,'','2020-11-08 20:27:17','테스트','2020-11-08 20:27:17','테스트');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
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
