use biblioteca;

CREATE TABLE `multa` (
    `id_multa`    INT          NOT NULL AUTO_INCREMENT,
    `id_cliente`  INT          NOT NULL,
    `descricao`   VARCHAR(60)  NOT NULL,
    `valor`       DECIMAL(6,2) NOT NULL,
    
    PRIMARY KEY (`id_multa`),
    
    KEY `fk_table1_cliente_idx` (`id_cliente`),
    
    CONSTRAINT `fk_table1_cliente` 
        FOREIGN KEY (`id_cliente`) 
        REFERENCES `cliente` (`id_cliente`)
) 
