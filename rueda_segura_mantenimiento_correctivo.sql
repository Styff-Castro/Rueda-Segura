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
-- Table structure for table `mantenimiento_correctivo`
--

DROP TABLE IF EXISTS `mantenimiento_correctivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento_correctivo` (
  `mantenimiento_correctivo_id` int NOT NULL AUTO_INCREMENT,
  `vehiculo_id` int DEFAULT NULL,
  `mecanico_id` int DEFAULT NULL,
  `fecha_averia` date NOT NULL,
  `descripcion_averia` text NOT NULL,
  `fecha_inicio_reparacion` date NOT NULL,
  `fecha_fin_reparacion` date NOT NULL,
  `respuestos_utilizados` text NOT NULL,
  `costo_reparacion` decimal(10,2) DEFAULT NULL,
  `causa_averia` varchar(100) NOT NULL,
  `prioridad` varchar(20) NOT NULL,
  PRIMARY KEY (`mantenimiento_correctivo_id`),
  KEY `vehiculo_id` (`vehiculo_id`),
  KEY `mecanico_id` (`mecanico_id`),
  CONSTRAINT `mantenimiento_correctivo_ibfk_1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`vehiculo_id`),
  CONSTRAINT `mantenimiento_correctivo_ibfk_2` FOREIGN KEY (`mecanico_id`) REFERENCES `mecanico` (`mecanico_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento_correctivo`
--

LOCK TABLES `mantenimiento_correctivo` WRITE;
/*!40000 ALTER TABLE `mantenimiento_correctivo` DISABLE KEYS */;
INSERT INTO `mantenimiento_correctivo` VALUES (1,1,1,'2024-02-20','Fallo en el motor','2024-02-20','2024-02-22','Bujías, filtro de aire',250.00,'Desgaste de bujías','Alta'),(2,2,2,'2024-03-05','Fallo en el sistema eléctrico','2024-03-05','2024-03-07','Cableado, batería',180.00,'Cortocircuito','Media'),(3,3,3,'2024-04-15','Avería en la caja de cambios','2024-04-15','2024-04-20','Engranajes, aceite',500.00,'Desgaste de engranajes','Alta'),(4,4,4,'2024-05-05','Neumático pinchado','2024-05-05','2024-05-05','Neumático nuevo',80.00,'Clavo en la carretera','Baja'),(5,5,5,'2024-06-20','Fallo en el sistema de frenos','2024-06-20','2024-06-22','Pastillas de freno, líquido de frenos',300.00,'Desgaste de pastillas','Media'),(6,6,1,'2024-07-10','Fallo en el sistema de dirección','2024-07-10','2024-07-12','Rotulas, terminales de dirección',200.00,'Desgaste de rótulas','Media'),(7,7,2,'2024-08-01','Fallo en el sistema de suspensión','2024-08-01','2024-08-03','Amortiguadores, muelles',350.00,'Desgaste de amortiguadores','Alta'),(8,8,3,'2024-09-18','Fallo en el sistema de refrigeración','2024-09-18','2024-09-20','Radiador, termostato',280.00,'Fallo del termostato','Media');
/*!40000 ALTER TABLE `mantenimiento_correctivo` ENABLE KEYS */;
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
