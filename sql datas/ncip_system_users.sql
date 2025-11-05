-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ncip_system
-- ------------------------------------------------------
-- Server version	8.0.43

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
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `is_active` tinyint(1) DEFAULT '1',
  `is_approved` tinyint(1) DEFAULT '0',
  `phone_number` varchar(20) DEFAULT NULL,
  `address` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'admin','Admin','User','admin@ncip.gov','$2b$10$w495boLPAFa/eqJNxmAsh.XVRviaxUniQHjO890vxECijZzWcT/0u','admin',1,1,'09171234567','General Santos City','2025-10-11 18:20:52','2025-10-20 20:51:06'),(7,'user1','Juan','Dela Cruz','juan@example.com','$2b$10$BgEwJRguViTWVgG5V1qdwuVoxHTtCmJbU5pKpsfKYy9bXEg0XPepi','user',1,1,'09171231234','Koronadal City','2025-10-11 18:25:31','2025-10-20 20:48:58'),(10,'Anne','Analiza','Tatad','anne_feb19@yahoo.com','$2b$10$/dc5WJaWmeZXF5bfOrSizuNK6qhPY1nFA2B7ZupzK/ginaVt/.N6C','admin',1,1,NULL,NULL,'2025-10-14 14:46:03','2025-10-14 14:46:03'),(11,'Juan123','Juan','Dela Cruz','Juan123@gmail.com','$2b$10$09jHeEoyS.s/hjJA71kzjerCFwDU1qQ21rUR1y.pNQfhKOYIzTW72','user',1,1,'+639106920736','Sitio Proper, Daan Suyan, Padidu, Malapatan, Sarangani','2025-10-14 14:47:01','2025-10-14 14:47:01'),(12,'maria','Maria','Santos','maria@example.com','$2b$10$hash_for_maria','user',1,1,'09173334455','Malungon, Sarangani','2025-10-14 14:47:22','2025-10-14 14:47:22'),(13,'CJ123','Cj','Castro','CJ123@gmail.com','$2b$10$gB6vIg6d5gp04I3BIIBC3ulDWLm/7XTQskk6yVLgPBEuXZea3y2ei','user',1,1,'+639106920736','Manansala Subv., Aparente Street, Purok Malakas General Santos City., Bagacay, Alabel, Sarangani','2025-10-15 09:49:39','2025-10-15 09:49:39'),(15,'Marin123','Marin','Peru','Marin123@gmail.com','$2b$10$W1qLADDA6gvbo94zKFW6JeNxC89efGbZAYjTDYlILZKKV4Tdb43/K','user',1,1,'+639106920736','Kaltuad, Glan, Sarangani','2025-10-16 05:42:07','2025-10-16 05:42:07'),(16,'Kiefer123','Kiefer','Bose','Kiefer123@gmail.com','$2b$10$zIBtcur1Ad8q4SAqnHqNUu5vVpBz.0xuTKfCPRujkmbsvZ/VxvZjK','user',1,1,'+639123456789','Sitio Centro, Alegria, Alabel, Sarangani','2025-10-16 05:42:28','2025-10-16 05:42:28'),(17,'analiza.tatad','Analiza','Tatad','analiza.tatad@ncip.gov.ph','$2b$10$FVUPZS9.LNYK4Piw.oUq.Otrh1oecd.34HR8JezFVUVitJXkAbuke','user',1,1,'+639171199763','Maribulan, Alabel, Sarangani','2025-10-16 07:43:56','2025-10-16 07:43:56'),(18,'Cheycssss','Chelsey','Jalaman','ChelseyJalaman2004@gmail.com','$2b$10$z2bhJsvoPm848YjekErpKeEaew0xwruUaAiv651IRxxNUgltlc9d6','admin',1,1,NULL,NULL,'2025-10-19 18:10:55','2025-10-19 18:10:55'),(19,'user','Juan','Dela Cruz','user@ncip.gov','$2b$10$YGIHE63eiprMhihP58ZbueN6.opoUJd8yN8JKOxdwYgAgl186OO1i','user',1,1,NULL,NULL,'2025-10-20 20:51:06','2025-10-20 20:51:06'),(20,'Cheycssssss','Chelsey','Jalaman','Cheycss@gmail.com','$2b$10$/Az4apFabrNbL78F3pJJm.t4Ws4dDNWlzr30nctZ8Mfr6N36/1DbS','user',1,1,NULL,NULL,'2025-10-20 21:41:12','2025-10-20 21:41:12'),(100,'testadmin','Test','Admin','testadmin@ncip.gov.ph','$2b$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','admin',1,1,NULL,NULL,'2025-10-21 20:41:49','2025-10-27 16:42:33'),(999,'','Maria','Santos','maria.santos@test.com','$2b$10$test','user',1,0,NULL,NULL,'2025-10-21 20:21:55','2025-10-27 16:42:34'),(1000,'Genosan2004','Jc','Bacus','Genosan2004@gmail.com','$2b$10$jtQpprI5BgLRf4U0OKzjauadGvU.jYhM37KyGq//2QwHOFPq2Fzzu','user',1,1,'+639106920736','Daan Suyan, Malapatan, Sarangani','2025-10-22 16:19:32','2025-10-22 16:19:32'),(1001,'Jelaiza123','Jelaiza','Delos Santos','Jelaiza123@gmail.com','$2b$10$tCoSEGugw.Aqd.UaIuNP8enklN74LGprfs7JP7GeQfMKLG3g6pSV6','user',1,1,'+639106920736','Poblacion, Maitum, Sarangani','2025-10-23 03:55:51','2025-10-23 03:55:51'),(1002,'krystatad1616@gmail.com','Krys Jerson','Tatad','krystatad1616@gmail.com','$2b$12$q/XLjyrqdHSKa/MZmKCGm.goAWJeeKI.ikcLKVEb9bKMwhNvN4ROi','user',1,1,'+639068741653','Purok saging, Tokawal, Alabel, Sarangani','2025-10-27 17:25:11','2025-10-27 17:25:11'),(1003,'chelseyjalaman15@gmail.com','Chelsey Janroy','Jalaman','chelseyjalaman15@gmail.com','$2b$12$K9MLB3uUvhMfTjl9EJFxe.mRh6oSOxtsLMfcspUqQgvmUu8oaew5O','user',1,1,'+639279292789','Maribulan, Alabel, Sarangani','2025-10-27 17:44:30','2025-10-27 17:44:30');
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

-- Dump completed on 2025-11-05 21:39:10
