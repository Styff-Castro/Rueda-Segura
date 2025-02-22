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
-- Table structure for table `neumaticos`
--

DROP TABLE IF EXISTS `neumaticos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neumaticos` (
  `neumatico_id` int NOT NULL AUTO_INCREMENT,
  `vehiculo_id` int DEFAULT NULL,
  `marca_neumatico_id` int DEFAULT NULL,
  `modelo_neumatico_id` int DEFAULT NULL,
  `fecha_instalacion` date NOT NULL,
  `kilometraje_instalacion` int NOT NULL,
  `estado_neumatico` varchar(50) NOT NULL,
  `observaciones` text,
  PRIMARY KEY (`neumatico_id`),
  KEY `vehiculo_id` (`vehiculo_id`),
  KEY `marca_neumatico_id` (`marca_neumatico_id`),
  KEY `modelo_neumatico_id` (`modelo_neumatico_id`),
  CONSTRAINT `neumaticos_ibfk_1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`vehiculo_id`),
  CONSTRAINT `neumaticos_ibfk_2` FOREIGN KEY (`marca_neumatico_id`) REFERENCES `marca_neumatico` (`marca_neumatico_id`),
  CONSTRAINT `neumaticos_ibfk_3` FOREIGN KEY (`modelo_neumatico_id`) REFERENCES `modelo_neumatico` (`modelo_neumatico_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neumaticos`
--

LOCK TABLES `neumaticos` WRITE;
/*!40000 ALTER TABLE `neumaticos` DISABLE KEYS */;
INSERT INTO `neumaticos` VALUES (27,1,1,1,'2024-02-20',50000,'Nuevo','Neumáticos delanteros'),(28,2,2,2,'2024-03-05',75000,'Usado','Neumáticos traseros'),(29,3,3,3,'2024-04-15',100000,'Reemplazado','Juego completo'),(30,4,1,4,'2024-05-05',25000,'Nuevo','Neumático de repuesto'),(31,5,2,5,'2024-06-20',90000,'Usado','Neumáticos delanteros'),(32,1,3,6,'2024-07-10',60000,'Nuevo','Neumáticos traseros'),(33,2,1,1,'2024-08-01',80000,'Reemplazado','Juego completo'),(34,3,2,2,'2024-09-18',110000,'Usado','Neumáticos delanteros'),(35,4,3,3,'2024-10-05',30000,'Nuevo','Neumático de repuesto'),(36,5,1,4,'2024-11-20',95000,'Usado','Neumáticos traseros'),(37,1,2,5,'2024-12-12',65000,'Nuevo','Neumáticos delanteros'),(38,2,3,6,'2025-01-25',85000,'Usado','Neumáticos traseros'),(39,3,1,1,'2025-02-08',120000,'Reemplazado','Juego completo'),(40,1,1,1,'2024-07-22',50000,'Nuevo','Neumático delantero izquierdo');
/*!40000 ALTER TABLE `neumaticos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-22 16:38:42
