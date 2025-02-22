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
-- Table structure for table `mantenimiento_preventivo`
--

DROP TABLE IF EXISTS `mantenimiento_preventivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento_preventivo` (
  `mantenimiento_preventivo_id` int NOT NULL AUTO_INCREMENT,
  `vehiculo_id` int DEFAULT NULL,
  `tipo_de_mantenimiento_id` int DEFAULT NULL,
  `fecha_programada` date NOT NULL,
  `fecha_realizada` date NOT NULL,
  `kilometraje_mantenimiento` int NOT NULL,
  `observaciones` text NOT NULL,
  PRIMARY KEY (`mantenimiento_preventivo_id`),
  KEY `vehiculo_id` (`vehiculo_id`),
  KEY `tipo_de_mantenimiento_id` (`tipo_de_mantenimiento_id`),
  CONSTRAINT `mantenimiento_preventivo_ibfk_1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`vehiculo_id`),
  CONSTRAINT `mantenimiento_preventivo_ibfk_2` FOREIGN KEY (`tipo_de_mantenimiento_id`) REFERENCES `tipo_de_mantenimiento` (`tipo_de_mantenimiento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento_preventivo`
--

LOCK TABLES `mantenimiento_preventivo` WRITE;
/*!40000 ALTER TABLE `mantenimiento_preventivo` DISABLE KEYS */;
INSERT INTO `mantenimiento_preventivo` VALUES (1,1,1,'2024-02-15','2024-02-15',55000,'Cambio de aceite y filtro'),(2,2,2,'2024-03-01','2024-03-01',125000,'Revisión y ajuste de frenos'),(3,3,3,'2024-04-10','2024-04-10',85000,'Cambio de neumáticos'),(4,4,1,'2024-05-01','2024-05-01',38000,'Cambio de aceite y filtro'),(5,5,2,'2024-06-15','2024-06-15',100000,'Revisión y ajuste de frenos'),(6,6,4,'2024-07-20','2024-07-20',28000,'Mantenimiento de motor y revisión de niveles'),(7,7,5,'2024-08-05','2024-08-05',155000,'Revisión de luces y sistema eléctrico'),(8,8,3,'2024-09-12','2024-09-12',112000,'Cambio de neumáticos y alineación'),(9,9,1,'2024-10-25','2024-10-25',62000,'Cambio de aceite y filtro'),(10,10,2,'2024-11-08','2024-11-08',98000,'Revisión y ajuste de frenos');
/*!40000 ALTER TABLE `mantenimiento_preventivo` ENABLE KEYS */;
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
