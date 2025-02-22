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
-- Table structure for table `comunicacion`
--

DROP TABLE IF EXISTS `comunicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comunicacion` (
  `comunicacion_id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `vehiculo_id` int DEFAULT NULL,
  `tipo_comunicacion` varchar(50) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha_comunicacion` date NOT NULL,
  PRIMARY KEY (`comunicacion_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `vehiculo_id` (`vehiculo_id`),
  CONSTRAINT `comunicacion_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`),
  CONSTRAINT `comunicacion_ibfk_2` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`vehiculo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunicacion`
--

LOCK TABLES `comunicacion` WRITE;
/*!40000 ALTER TABLE `comunicacion` DISABLE KEYS */;
INSERT INTO `comunicacion` VALUES (1,1,1,'Email','Recordatorio de cita para mantenimiento','2024-02-15'),(2,2,2,'Teléfono','Aviso de avería detectada','2024-03-01'),(3,3,3,'Email','Confirmación de reparación','2024-04-10'),(4,4,1,'Teléfono','Seguimiento de satisfacción','2024-05-01'),(5,5,2,'Email','Oferta de mantenimiento preventivo','2024-06-15'),(6,1,3,'Teléfono','Consulta sobre neumáticos','2024-07-20'),(7,2,1,'Email','Información sobre garantía','2024-08-05'),(8,3,2,'Teléfono','Solicitud de asistencia en carretera','2024-09-12'),(9,1,1,'App Móvil','Hola, necesito información sobre el cambio de neumáticos.','2024-07-22'),(10,2,3,'Email','Quisiera saber si tienen disponibilidad para un cambio de aceite la próxima semana.','2024-07-22'),(11,3,2,'Teléfono','Llamé para confirmar mi cita del 29 de agosto.','2024-07-22');
/*!40000 ALTER TABLE `comunicacion` ENABLE KEYS */;
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
