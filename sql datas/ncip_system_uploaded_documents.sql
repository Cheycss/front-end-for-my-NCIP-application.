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
-- Table structure for table `uploaded_documents`
--

DROP TABLE IF EXISTS `uploaded_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploaded_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `application_id` varchar(50) NOT NULL,
  `user_id` int DEFAULT NULL,
  `document_type` varchar(100) NOT NULL,
  `requirement_id` varchar(100) DEFAULT NULL,
  `original_name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `file_size` int NOT NULL,
  `mime_type` varchar(100) NOT NULL,
  `upload_status` enum('uploaded','processing','failed') DEFAULT 'uploaded',
  `uploaded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `review_status` enum('pending','approved','rejected') DEFAULT 'pending',
  `reviewed_by` int DEFAULT NULL,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `review_notes` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_application_id` (`application_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_document_type` (`document_type`),
  KEY `idx_upload_status` (`upload_status`),
  KEY `idx_review_status` (`review_status`),
  KEY `reviewed_by` (`reviewed_by`),
  CONSTRAINT `uploaded_documents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  CONSTRAINT `uploaded_documents_ibfk_2` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploaded_documents`
--

LOCK TABLES `uploaded_documents` WRITE;
/*!40000 ALTER TABLE `uploaded_documents` DISABLE KEYS */;
INSERT INTO `uploaded_documents` VALUES (1,'4',999,'coc_page_1','coc_page_1','COC_Page_1.pdf','test_coc_1.pdf','/uploads/test/',1024,'application/pdf','uploaded','2025-10-21 20:30:08','approved',4,'2025-10-21 20:30:08',NULL,'2025-10-21 20:30:08','2025-10-21 20:30:08'),(2,'4',999,'birth_certificate','birth_cert','Birth_Certificate.pdf','test_birth.pdf','/uploads/test/',2048,'application/pdf','uploaded','2025-10-21 20:30:08','approved',4,'2025-10-21 20:30:08',NULL,'2025-10-21 20:30:08','2025-10-21 20:30:08'),(3,'4',999,'school_id','school_id','School_ID.pdf','test_school.pdf','/uploads/test/',1536,'application/pdf','uploaded','2025-10-21 20:30:08','approved',4,'2025-10-21 20:30:08',NULL,'2025-10-21 20:30:08','2025-10-21 20:30:08'),(4,'5',999,'coc_page_1','coc_page_1','COC_Page_1_Juan.pdf','test_juan_coc_1.pdf','/uploads/test/',1024,'application/pdf','uploaded','2025-10-21 20:41:49','rejected',4,'2025-10-22 15:22:51','rejected by Admin User','2025-10-21 20:41:49','2025-10-22 15:22:51'),(5,'5',999,'birth_certificate','birth_cert','Birth_Certificate_Juan.pdf','test_juan_birth.pdf','/uploads/test/',2048,'application/pdf','uploaded','2025-10-21 20:41:49','approved',4,'2025-10-22 15:18:41','approved by undefined undefined','2025-10-21 20:41:49','2025-10-22 15:18:41'),(6,'5',999,'business_permit','business_permit','Business_Permit_Juan.pdf','test_juan_business.pdf','/uploads/test/',1536,'application/pdf','uploaded','2025-10-21 20:41:49','approved',4,'2025-10-22 15:18:47','approved by undefined undefined','2025-10-21 20:41:49','2025-10-22 15:18:47');
/*!40000 ALTER TABLE `uploaded_documents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-05 21:39:08
