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
-- Table structure for table `repuesto`
--

DROP TABLE IF EXISTS `repuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repuesto` (
  `repuesto_id` int NOT NULL AUTO_INCREMENT,
  `codigo_repuesto` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `cantidad_stock` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `proveedor_id` int DEFAULT NULL,
  `ubicacion_almacen` varchar(100) NOT NULL,
  `stock_minimo` int NOT NULL,
  PRIMARY KEY (`repuesto_id`),
  UNIQUE KEY `codigo_repuesto` (`codigo_repuesto`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `repuesto_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`proveedor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repuesto`
--

LOCK TABLES `repuesto` WRITE;
/*!40000 ALTER TABLE `repuesto` DISABLE KEYS */;
INSERT INTO `repuesto` VALUES (1,'F0123','Filtro de aceite','Mann','W 712/80',100,15.50,1,'Estante A1',20),(2,'B4567','Bujía de encendido','Bosch','Super Plus',50,5.25,1,'Estante A2',10),(3,'P7890','Pastillas de freno','Brembo','P 50 098',80,45.00,4,'Estante B1',15),(4,'N1234','Neumático','Michelin','Energy Saver',30,85.00,2,'Estante C1',5),(5,'A5678','Amortiguador','Monroe','Reflex',40,60.00,3,'Estante B2',10),(6,'R9012','Radiador','Valeo','247098',20,120.00,5,'Estante D1',5),(7,'T3456','Termostato','Wahler','4107.88D',60,25.00,5,'Estante D2',15),(8,'F7890','Filtro de aire','Mahle','LX 1822',90,12.75,1,'Estante A3',20),(9,'C1234','Cable de embrague','Sachs','3074 000 029',70,30.00,1,'Estante E1',10),(10,'B5678','Bomba de agua','SKF','VKPC 81707',40,80.00,5,'Estante E2',5),(11,'E9012','Electroventilador','Valeo','696564',30,95.00,5,'Estante F1',5),(12,'M3456','Manguera de refrigeración','Gates','05-2717',80,18.50,1,'Estante F2',15);
/*!40000 ALTER TABLE `repuesto` ENABLE KEYS */;
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
