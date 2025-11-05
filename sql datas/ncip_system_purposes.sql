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
-- Table structure for table `purposes`
--

DROP TABLE IF EXISTS `purposes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purposes` (
  `purpose_id` int NOT NULL AUTO_INCREMENT,
  `purpose_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirements` json DEFAULT NULL,
  PRIMARY KEY (`purpose_id`),
  UNIQUE KEY `purpose_name` (`purpose_name`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purposes`
--

LOCK TABLES `purposes` WRITE;
/*!40000 ALTER TABLE `purposes` DISABLE KEYS */;
INSERT INTO `purposes` VALUES (32,'Educational Assistance','For students seeking educational support',1,'2025-10-20 21:48:53','EA','[{\"id\": \"birth_certificate\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"school_id\", \"name\": \"School ID\", \"required\": true}, {\"id\": \"certificate_of_enrollment\", \"name\": \"Certificate of Enrollment\", \"required\": true}, {\"id\": \"grades\", \"name\": \"Latest Report Card/Grades\", \"required\": true}, {\"id\": \"certificate_of_indigency\", \"name\": \"Certificate of Indigency\", \"required\": false}]'),(33,'Scholarship Application','For scholarship programs',1,'2025-10-20 21:48:53','SA','[{\"id\": \"birth_certificate_psa_copy\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"certificate_of_indigency\", \"name\": \"Certificate of Indigency\", \"required\": true}, {\"id\": \"school_records/transcript\", \"name\": \"School Records/Transcript\", \"required\": true}, {\"id\": \"recommendation_letter\", \"name\": \"Recommendation Letter\", \"required\": true}, {\"id\": \"application_essay\", \"name\": \"Application Essay\", \"required\": true}]'),(34,'Employment','For job applications and employment verification',1,'2025-10-20 21:48:53','E','[{\"id\": \"birth_certificate\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"valid_id\", \"name\": \"Valid Government ID\", \"required\": true}, {\"id\": \"resume\", \"name\": \"Resume/CV\", \"required\": true}, {\"id\": \"nbi_clearance\", \"name\": \"NBI Clearance\", \"required\": false}, {\"id\": \"police_clearance\", \"name\": \"Police Clearance\", \"required\": false}]'),(35,'Business Permit','For business registration and permits',1,'2025-10-20 21:48:53','BP','[{\"id\": \"birth_certificate\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"valid_id\", \"name\": \"Valid Government ID\", \"required\": true}, {\"id\": \"business_plan\", \"name\": \"Business Plan\", \"required\": true}, {\"id\": \"barangay_clearance\", \"name\": \"Barangay Clearance\", \"required\": true}, {\"id\": \"location_sketch\", \"name\": \"Location Sketch/Map\", \"required\": false}]'),(36,'Land Claim/Ancestral Domain','For ancestral land claims and domain applications',1,'2025-10-20 21:48:53','LCD','[{\"id\": \"birth_certificate\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"tax_declaration\", \"name\": \"Tax Declaration\", \"required\": true}, {\"id\": \"land_survey\", \"name\": \"Land Survey/Sketch Plan\", \"required\": true}, {\"id\": \"affidavit_of_ownership\", \"name\": \"Affidavit of Ownership\", \"required\": true}, {\"id\": \"witness_affidavits\", \"name\": \"Witness Affidavits (2 persons)\", \"required\": true}]'),(37,'Health/Medical Assistance','For medical and health-related assistance',1,'2025-10-20 21:48:53','HA','[{\"id\": \"birth_certificate\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"medical_certificate\", \"name\": \"Medical Certificate\", \"required\": true}, {\"id\": \"hospital_bills\", \"name\": \"Hospital Bills/Medical Records\", \"required\": true}, {\"id\": \"certificate_of_indigency\", \"name\": \"Certificate of Indigency\", \"required\": true}, {\"id\": \"prescription\", \"name\": \"Doctor\'s Prescription\", \"required\": false}]'),(38,'Housing Assistance','For housing programs and relocation',1,'2025-10-20 21:48:53','HA','[{\"id\": \"birth_certificate\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"marriage_certificate\", \"name\": \"Marriage Certificate (if married)\", \"required\": false}, {\"id\": \"certificate_of_indigency\", \"name\": \"Certificate of Indigency\", \"required\": true}, {\"id\": \"proof_of_residency\", \"name\": \"Proof of Residency\", \"required\": true}, {\"id\": \"family_photo\", \"name\": \"Family Photo\", \"required\": false}]'),(39,'Livelihood Program','For livelihood and skills training programs',1,'2025-10-20 21:48:53','LP','[{\"id\": \"birth_certificate\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"valid_id\", \"name\": \"Valid Government ID\", \"required\": true}, {\"id\": \"certificate_of_indigency\", \"name\": \"Certificate of Indigency\", \"required\": false}, {\"id\": \"skills_certificate\", \"name\": \"Skills Training Certificate (if any)\", \"required\": false}, {\"id\": \"business_proposal\", \"name\": \"Business Proposal\", \"required\": true}]'),(40,'Senior Citizen Benefits','For senior citizen ID and benefits',1,'2025-10-20 21:48:53','SCB','[{\"id\": \"birth_certificate\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"valid_id\", \"name\": \"Valid Government ID\", \"required\": true}, {\"id\": \"recent_photo\", \"name\": \"Recent 2x2 Photo\", \"required\": true}, {\"id\": \"proof_of_age\", \"name\": \"Proof of Age (60 years old and above)\", \"required\": true}]'),(41,'PWD Benefits','For persons with disability benefits',1,'2025-10-20 21:48:53','PB','[{\"id\": \"birth_certificate\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"medical_certificate\", \"name\": \"Medical Certificate (PWD)\", \"required\": true}, {\"id\": \"valid_id\", \"name\": \"Valid Government ID\", \"required\": true}, {\"id\": \"recent_photo\", \"name\": \"Recent 2x2 Photo\", \"required\": true}, {\"id\": \"disability_assessment\", \"name\": \"Disability Assessment Form\", \"required\": true}]'),(42,'Other Purpose','For other purposes not listed',1,'2025-10-20 21:48:53','OP','[{\"id\": \"birth_certificate\", \"name\": \"Birth Certificate (PSA Copy)\", \"required\": true}, {\"id\": \"valid_id\", \"name\": \"Valid Government ID\", \"required\": true}, {\"id\": \"supporting_documents\", \"name\": \"Supporting Documents\", \"required\": false}]'),(43,'Cash Assistance','NA',1,'2025-10-23 03:46:47','CA','[{\"id\": \"nbi_clearance\", \"name\": \"NBI Clearance\", \"required\": true}, {\"id\": \"medical_certificate\", \"name\": \"Medical Certificate\", \"required\": true}, {\"id\": \"educational_records\", \"name\": \"Educational Records\", \"required\": true}]');
/*!40000 ALTER TABLE `purposes` ENABLE KEYS */;
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
