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
-- Table structure for table `cancellation_log`
--

DROP TABLE IF EXISTS `cancellation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancellation_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `application_id` int NOT NULL COMMENT 'Links to applications table',
  `user_id` int NOT NULL COMMENT 'User whose application was cancelled',
  `cancellation_type` enum('automatic','manual','user_requested') COLLATE utf8mb4_unicode_ci DEFAULT 'automatic',
  `cancellation_reason` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Reason for cancellation',
  `cancelled_by` int DEFAULT NULL COMMENT 'Admin who cancelled (if manual)',
  `cancelled_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'When cancelled',
  `total_requirements` int NOT NULL COMMENT 'Total requirements needed',
  `submitted_requirements` int NOT NULL COMMENT 'How many were submitted',
  `approved_requirements` int NOT NULL COMMENT 'How many were approved',
  `missing_requirements` int NOT NULL COMMENT 'How many were missing',
  `days_past_deadline` int DEFAULT '0' COMMENT 'Days past deadline when cancelled',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `cancelled_by` (`cancelled_by`),
  KEY `idx_application` (`application_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_type` (`cancellation_type`),
  KEY `idx_cancelled_at` (`cancelled_at`),
  CONSTRAINT `cancellation_log_ibfk_1` FOREIGN KEY (`application_id`) REFERENCES `applications` (`application_id`) ON DELETE CASCADE,
  CONSTRAINT `cancellation_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `cancellation_log_ibfk_3` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Logs all cancelled applications for audit trail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancellation_log`
--

LOCK TABLES `cancellation_log` WRITE;
/*!40000 ALTER TABLE `cancellation_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancellation_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-05 21:39:09
