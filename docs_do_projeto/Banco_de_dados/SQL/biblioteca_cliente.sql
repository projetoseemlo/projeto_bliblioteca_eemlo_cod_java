use biblioteca;

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
    `id_cliente`  INT          NOT NULL AUTO_INCREMENT,
    `nome`       VARCHAR(100) NOT NULL,
    `data_nasc`  VARCHAR(50)  NOT NULL,
    `sexo`       ENUM('M','F') NOT NULL,
    `cpf`        VARCHAR(20)  NOT NULL,
    
    PRIMARY KEY (`id_cliente`)
) 



/*!40101 SET character_set_client = @saved_cs_client */;