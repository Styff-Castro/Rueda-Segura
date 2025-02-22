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
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculos` (
  `vehiculo_id` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `seguro_id` int NOT NULL,
  `tipo_vehiculo_id` int DEFAULT NULL,
  `fabricacion` int NOT NULL,
  `kilometraje_actual` int NOT NULL,
  `fecha_ultima_revision` date NOT NULL,
  `historial_de_mantenimiento` text NOT NULL,
  `ITV` date NOT NULL,
  PRIMARY KEY (`vehiculo_id`),
  UNIQUE KEY `matricula` (`matricula`),
  KEY `idx_matricula` (`matricula`),
  KEY `idx_seguro_id` (`seguro_id`),
  KEY `idx_tipo_vehiculo_id` (`tipo_vehiculo_id`),
  CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`seguro_id`) REFERENCES `seguro` (`seguro_id`),
  CONSTRAINT `vehiculos_ibfk_2` FOREIGN KEY (`tipo_vehiculo_id`) REFERENCES `tipo_vehiculo` (`tipo_vehiculo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES (1,'XYZ-789','Ford','Fiesta',2,1,2018,120000,'2024-06-30','Mantenimiento al día','2025-06-30'),(2,'5678DEF','Ford','Transit',2,2,2018,120000,'2023-11-20','Mantenimiento de frenos y neumáticos','2024-03-15'),(3,'9012GHI','Volvo','FH',3,3,2022,80000,'2024-05-10','Cambio de filtros y aceite','2024-09-30'),(4,'3456JKL','Renault','Clio',4,1,2019,35000,'2024-02-28','Revisión general y cambio de correa de distribución','2024-07-15'),(5,'7890MNO','Mercedes-Benz','Sprinter',5,2,2021,95000,'2023-12-05','Mantenimiento de la suspensión y dirección','2024-04-30'),(6,'1122PQR','Scania','R500',1,3,2023,25000,'2024-07-20','Revisión de motor y sistema de refrigeración','2025-01-15'),(7,'3344STU','Peugeot','Partner',2,2,2017,150000,'2024-03-05','Mantenimiento de la transmisión y embrague','2024-08-31'),(8,'5566VWX','MAN','TGX',3,3,2020,110000,'2023-10-18','Cambio de neumáticos y revisión de frenos','2024-06-10'),(9,'7788YZ0','Citroën','Berlingo',4,2,2019,60000,'2024-05-25','Revisión de dirección y suspensión','2024-12-05'),(10,'9900ABC','Iveco','Stralis',5,3,2022,90000,'2024-01-12','Mantenimiento general y cambio de aceite','2024-07-20'),(11,'ABC-123','Seat','León',1,1,2020,50000,'2024-01-15','Revisiones periódicas','2025-01-15');
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
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
