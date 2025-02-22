-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: rueda_segura
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `mantenimiento_repuesto`
--

DROP TABLE IF EXISTS `mantenimiento_repuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento_repuesto` (
  `mantenimiento_repuesto_id` int NOT NULL AUTO_INCREMENT,
  `mantenimiento_correctivo_id` int DEFAULT NULL,
  `repuesto_id` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`mantenimiento_repuesto_id`),
  KEY `mantenimiento_correctivo_id` (`mantenimiento_correctivo_id`),
  KEY `repuesto_id` (`repuesto_id`),
  CONSTRAINT `mantenimiento_repuesto_ibfk_1` FOREIGN KEY (`mantenimiento_correctivo_id`) REFERENCES `mantenimiento_correctivo` (`mantenimiento_correctivo_id`),
  CONSTRAINT `mantenimiento_repuesto_ibfk_2` FOREIGN KEY (`repuesto_id`) REFERENCES `repuesto` (`repuesto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento_repuesto`
--

LOCK TABLES `mantenimiento_repuesto` WRITE;
/*!40000 ALTER TABLE `mantenimiento_repuesto` DISABLE KEYS */;
INSERT INTO `mantenimiento_repuesto` VALUES (1,1,3,2),(2,1,7,1),(3,1,11,1),(4,2,1,3),(5,2,5,2),(6,3,2,1),(7,3,8,2),(8,3,12,1),(9,4,4,1),(10,5,6,2),(11,5,9,1),(12,6,10,1),(13,7,1,2),(14,7,4,1),(15,8,5,1);
/*!40000 ALTER TABLE `mantenimiento_repuesto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-22 16:38:43
