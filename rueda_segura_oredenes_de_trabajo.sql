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
-- Table structure for table `oredenes_de_trabajo`
--

DROP TABLE IF EXISTS `oredenes_de_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oredenes_de_trabajo` (
  `ordenes_de_trabajo_id` int NOT NULL AUTO_INCREMENT,
  `vehiculo_id` int DEFAULT NULL,
  `tipo_de_mantenimiento_id` int DEFAULT NULL,
  `mecanico_id` int DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `descripcion_del_trabajo` text NOT NULL,
  `respuestos_utilizados` text NOT NULL,
  `costo_total` decimal(10,2) DEFAULT NULL,
  `estado_de_la_orden` varchar(20) NOT NULL,
  PRIMARY KEY (`ordenes_de_trabajo_id`),
  KEY `vehiculo_id` (`vehiculo_id`),
  KEY `tipo_de_mantenimiento_id` (`tipo_de_mantenimiento_id`),
  KEY `mecanico_id` (`mecanico_id`),
  CONSTRAINT `oredenes_de_trabajo_ibfk_1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`vehiculo_id`),
  CONSTRAINT `oredenes_de_trabajo_ibfk_2` FOREIGN KEY (`tipo_de_mantenimiento_id`) REFERENCES `tipo_de_mantenimiento` (`tipo_de_mantenimiento_id`),
  CONSTRAINT `oredenes_de_trabajo_ibfk_3` FOREIGN KEY (`mecanico_id`) REFERENCES `mecanico` (`mecanico_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oredenes_de_trabajo`
--

LOCK TABLES `oredenes_de_trabajo` WRITE;
/*!40000 ALTER TABLE `oredenes_de_trabajo` DISABLE KEYS */;
INSERT INTO `oredenes_de_trabajo` VALUES (1,1,1,1,'2024-02-20','2024-02-22','Cambio de aceite y filtro','Filtro de aceite, aceite de motor',150.00,'Completada'),(2,2,2,2,'2024-03-05','2024-03-07','Revisión y ajuste de frenos','Pastillas de freno, líquido de frenos',200.00,'Completada'),(3,3,3,3,'2024-04-15','2024-04-20','Sustitución de neumáticos','Neumáticos nuevos',400.00,'En curso'),(4,4,1,4,'2024-05-05','2024-05-05','Revisión de luces','Bombillas',50.00,'Completada'),(5,5,2,1,'2024-06-20','2024-06-22','Mantenimiento de la suspensión','Amortiguadores',300.00,'Pendiente'),(6,6,3,2,'2024-07-10','2024-07-12','Alineación y balanceo','Ninguno',100.00,'Completada'),(7,7,1,3,'2024-08-01','2024-08-03','Revisión del sistema de refrigeración','Líquido refrigerante',250.00,'En curso'),(8,8,2,4,'2024-09-18','2024-09-20','Diagnóstico y reparación eléctrica','Fusibles, cableado',180.00,'Pendiente');
/*!40000 ALTER TABLE `oredenes_de_trabajo` ENABLE KEYS */;
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
