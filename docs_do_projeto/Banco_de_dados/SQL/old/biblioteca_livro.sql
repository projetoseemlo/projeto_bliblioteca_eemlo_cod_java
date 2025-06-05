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
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id_livro` int(10) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(20) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `edicao` tinyint(3) NOT NULL,
  `ano` smallint(6) NOT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `exemplar` varchar(100) NOT NULL,
  `disponibilidade` char(1) NOT NULL,
  `localizacao_id_localizacao` int(11) NOT NULL,
  `id_estoque` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_livro`,`ISBN`),
  KEY `fk_livro_localizacao1_idx` (`localizacao_id_localizacao`),
  CONSTRAINT `fk_livro_localizacao1` FOREIGN KEY (`localizacao_id_localizacao`) REFERENCES `localizacao` (`id_localizacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'978-8535914849','George Orwell',1,1949,'Ficção','1984 - Exemplar 1','S',1,1001),(2,'978-8535914849','George Orwell',1,1949,'Ficção','1984 - Exemplar 2','S',1,1002),(3,'978-8535914849','George Orwell',1,1949,'Ficção','1984 - Exemplar 3','N',1,1003),(4,'978-8577994958','Machado de Assis',3,1881,'Romance','Memórias Póstumas de Brás Cubas','S',2,1004),(5,'978-8535909555','J.R.R. Tolkien',2,1954,'Fantasia','O Senhor dos Anéis: A Sociedade do Anel','S',3,1005),(6,'978-8535909562','J.R.R. Tolkien',2,1954,'Fantasia','O Senhor dos Anéis: As Duas Torres','S',3,1006),(7,'978-8535909579','J.R.R. Tolkien',2,1955,'Fantasia','O Senhor dos Anéis: O Retorno do Rei','N',3,1007),(8,'978-8532511010','Paulo Coelho',1,1988,'Ficção','O Alquimista','S',4,1008),(9,'978-8535902778','J.K. Rowling',1,1997,'Fantasia','Harry Potter e a Pedra Filosofal','S',5,1009),(10,'978-8535917758','J.K. Rowling',1,1998,'Fantasia','Harry Potter e a Câmara Secreta','S',5,1010),(11,'978-8532530585','Clarice Lispector',1,1977,'Literatura','A Hora da Estrela','S',6,1011),(12,'978-8535911480','J.D. Salinger',1,1951,'Ficção','O Apanhador no Campo de Centeio','N',7,1012),(13,'978-8537809967','Guimarães Rosa',1,1956,'Literatura','Grande Sertão: Veredas','S',8,1013),(14,'978-8535919295','Gabriel García Márquez',1,1967,'Realismo Mágico','Cem Anos de Solidão','S',9,1014),(15,'978-8535923292','Sun Tzu',1,-500,'Estratégia','A Arte da Guerra','S',10,1015);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17 17:22:41
