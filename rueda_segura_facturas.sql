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
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `factura_id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `contratos_id` int DEFAULT NULL,
  `fecha_de_factura` date NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `estado_de_factura` varchar(40) NOT NULL,
  PRIMARY KEY (`factura_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `contratos_id` (`contratos_id`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`),
  CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`contratos_id`) REFERENCES `contratos` (`contratos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,1,1,'2024-02-28',500.00,'Pagada'),(2,2,2,'2024-03-15',350.00,'Pendiente'),(3,3,3,'2024-04-30',700.00,'Pagada'),(4,4,1,'2024-05-10',200.00,'Pendiente'),(5,5,2,'2024-06-25',450.00,'Pagada'),(6,1,3,'2024-07-05',600.00,'Pendiente'),(7,2,1,'2024-08-20',800.00,'Pagada'),(8,3,2,'2024-09-12',250.00,'Pendiente'),(9,4,3,'2024-10-28',900.00,'Pagada'),(10,5,1,'2024-11-08',150.00,'Pendiente'),(11,1,2,'2024-12-15',550.00,'Pagada'),(12,2,3,'2025-01-30',750.00,'Pendiente'),(13,3,1,'2025-02-10',300.00,'Pagada'),(14,4,2,'2025-03-25',400.00,'Pendiente'),(15,5,3,'2025-04-05',650.00,'Pagada'),(16,1,1,'2025-05-20',850.00,'Pendiente'),(17,2,2,'2025-06-12',200.00,'Pagada'),(18,3,3,'2025-07-28',950.00,'Pendiente'),(19,4,1,'2025-08-08',100.00,'Pagada'),(20,5,2,'2025-09-15',500.00,'Pendiente');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
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
