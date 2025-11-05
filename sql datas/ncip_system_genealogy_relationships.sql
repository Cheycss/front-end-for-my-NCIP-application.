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
-- Table structure for table `genealogy_relationships`
--

DROP TABLE IF EXISTS `genealogy_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genealogy_relationships` (
  `relationship_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL COMMENT 'The main person',
  `related_person_id` int NOT NULL COMMENT 'The related family member',
  `relationship_type` enum('father','mother','paternal_grandfather','paternal_grandmother','maternal_grandfather','maternal_grandmother','spouse','child','sibling','paternal_uncle','paternal_aunt','maternal_uncle','maternal_aunt','cousin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) DEFAULT '1' COMMENT 'Primary relationship (for cases of adoption, remarriage)',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`relationship_id`),
  UNIQUE KEY `unique_relationship` (`person_id`,`related_person_id`,`relationship_type`),
  KEY `idx_person` (`person_id`),
  KEY `idx_related_person` (`related_person_id`),
  KEY `idx_relationship_type` (`relationship_type`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `genealogy_relationships_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `genealogy_records` (`genealogy_id`) ON DELETE CASCADE,
  CONSTRAINT `genealogy_relationships_ibfk_2` FOREIGN KEY (`related_person_id`) REFERENCES `genealogy_records` (`genealogy_id`) ON DELETE CASCADE,
  CONSTRAINT `genealogy_relationships_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genealogy_relationships`
--

LOCK TABLES `genealogy_relationships` WRITE;
/*!40000 ALTER TABLE `genealogy_relationships` DISABLE KEYS */;
INSERT INTO `genealogy_relationships` VALUES (1,10,7,'father',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(2,10,8,'mother',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(3,10,1,'paternal_grandfather',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(4,10,2,'paternal_grandmother',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(5,10,3,'maternal_grandfather',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(6,10,4,'maternal_grandmother',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(7,11,9,'father',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(8,11,10,'mother',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(9,11,5,'paternal_grandfather',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(10,11,6,'paternal_grandmother',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(11,11,7,'maternal_grandfather',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32'),(12,11,8,'maternal_grandmother',1,NULL,NULL,'2025-10-16 06:05:32','2025-10-16 06:05:32');
/*!40000 ALTER TABLE `genealogy_relationships` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-05 21:39:07
