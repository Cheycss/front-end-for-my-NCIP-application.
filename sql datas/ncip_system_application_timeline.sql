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
-- Table structure for table `application_timeline`
--

DROP TABLE IF EXISTS `application_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_timeline` (
  `timeline_id` int NOT NULL AUTO_INCREMENT,
  `application_id` int NOT NULL COMMENT 'Links to applications table',
  `submission_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'When application was submitted',
  `submission_deadline` date NOT NULL COMMENT 'Deadline to submit all documents',
  `first_document_uploaded_at` timestamp NULL DEFAULT NULL COMMENT 'When first document was uploaded',
  `last_document_uploaded_at` timestamp NULL DEFAULT NULL COMMENT 'When last document was uploaded',
  `all_documents_submitted_at` timestamp NULL DEFAULT NULL COMMENT 'When all documents were complete',
  `review_started_at` timestamp NULL DEFAULT NULL COMMENT 'When admin started review',
  `review_completed_at` timestamp NULL DEFAULT NULL COMMENT 'When review was completed',
  `approved_at` timestamp NULL DEFAULT NULL COMMENT 'When application was approved',
  `completed_at` timestamp NULL DEFAULT NULL COMMENT 'When entire process was completed',
  `processing_time_days` int DEFAULT NULL COMMENT 'Total days from submission to completion',
  `is_overdue` tinyint(1) DEFAULT '0' COMMENT 'Whether application missed deadline',
  `overdue_days` int DEFAULT '0' COMMENT 'Number of days past deadline',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`timeline_id`),
  UNIQUE KEY `unique_application` (`application_id`),
  KEY `idx_deadline` (`submission_deadline`),
  KEY `idx_overdue` (`is_overdue`),
  CONSTRAINT `application_timeline_ibfk_1` FOREIGN KEY (`application_id`) REFERENCES `applications` (`application_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tracks timeline and milestones for each application';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_timeline`
--

LOCK TABLES `application_timeline` WRITE;
/*!40000 ALTER TABLE `application_timeline` DISABLE KEYS */;
INSERT INTO `application_timeline` VALUES (1,1,'2025-10-15 15:17:19','2025-11-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2025-10-15 15:17:19','2025-10-15 15:17:19');
/*!40000 ALTER TABLE `application_timeline` ENABLE KEYS */;
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
