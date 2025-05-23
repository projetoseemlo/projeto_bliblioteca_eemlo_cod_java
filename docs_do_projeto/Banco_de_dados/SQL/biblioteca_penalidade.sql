-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteca
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `penalidade`
--

DROP TABLE IF EXISTS `penalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalidade` (
  `id_penalidade` int(10) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(60) NOT NULL,
  `valor` decimal(6,2) NOT NULL,
  `ind_suspenso` tinyint(4) NOT NULL DEFAULT 0,
  `data_inicio_suspensao` date DEFAULT NULL,
  `data_fim_suspensao` date DEFAULT NULL,
  PRIMARY KEY (`id_penalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalidade`
--

LOCK TABLES `penalidade` WRITE;
/*!40000 ALTER TABLE `penalidade` DISABLE KEYS */;
INSERT INTO `penalidade` VALUES (1,'Atraso na devolução (1-5 dias)',5.00,0,NULL,NULL),(2,'Atraso na devolução (6-10 dias)',10.00,0,NULL,NULL),(3,'Atraso na devolução (11+ dias)',15.00,0,NULL,NULL),(4,'Danos leves ao livro',20.00,0,NULL,NULL),(5,'Danos graves ao livro',50.00,0,NULL,NULL),(6,'Perda do livro',100.00,0,NULL,NULL),(7,'Renovação não autorizada',5.00,0,NULL,NULL),(8,'Uso indevido do livro',25.00,0,NULL,NULL),(9,'Devolução sem identificação',2.00,0,NULL,NULL),(10,'Reserva não retirada',3.00,0,NULL,NULL),(11,'Manuseio incorreto',7.50,0,NULL,NULL),(12,'Substituição de capa',15.00,0,NULL,NULL),(13,'Limpeza necessária',8.00,0,NULL,NULL),(14,'Páginas riscadas',12.00,0,NULL,NULL),(15,'Páginas rasgadas',30.00,0,NULL,NULL);
/*!40000 ALTER TABLE `penalidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17 17:22:43
