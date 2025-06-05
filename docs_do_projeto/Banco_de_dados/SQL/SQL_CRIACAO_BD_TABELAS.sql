-- 202506051211
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema biblioteca
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8 ;
USE `biblioteca` ;

-- -----------------------------------------------------
-- Table `biblioteca`.`localizacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `biblioteca`.`localizacao` ;

CREATE TABLE IF NOT EXISTS `biblioteca`.`localizacao` (
  `id_localizacao` INT NOT NULL,
  `estante` VARCHAR(3) NULL,
  `prateleira` VARCHAR(3) NULL,
  PRIMARY KEY (`id_localizacao`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `biblioteca`.`livro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `biblioteca`.`livro` ;

CREATE TABLE IF NOT EXISTS `biblioteca`.`livro` (
  `id_livro` INT(10) NOT NULL AUTO_INCREMENT,
  `ISBN` VARCHAR(20) NULL,
  `autor` VARCHAR(100) NOT NULL,
  `edicao` TINYINT(3) NOT NULL,
  `ano` SMALLINT(6) NOT NULL,
  `genero` VARCHAR(45) NULL,
  `exemplar` VARCHAR(100) NOT NULL,
  `disponibilidade` CHAR(1) NOT NULL,
  `localizacao_id_localizacao` INT NULL,
  `id_estoque` INT NULL,
  PRIMARY KEY (`id_livro`, `ISBN`),
  INDEX `fk_livro_localizacao1_idx` (`localizacao_id_localizacao` ASC),
  CONSTRAINT `fk_livro_localizacao1`
    FOREIGN KEY (`localizacao_id_localizacao`)
    REFERENCES `biblioteca`.`localizacao` (`id_localizacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `biblioteca`.`cliente`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `biblioteca`.`cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `data_nasc` DATE NOT NULL,
  `cpf` VARCHAR(20) NOT NULL,
  `sexo` ENUM('M','F','O') NULL,
  `endereco` VARCHAR(200) NULL,
  `fone` VARCHAR(15) NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `biblioteca`.`emprestimo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `biblioteca`.`emprestimo` ;

CREATE TABLE IF NOT EXISTS `biblioteca`.`emprestimo` (
  `id_emprestimo` INT(10) NOT NULL AUTO_INCREMENT,
  `id_cliente` INT(10) NOT NULL,
  `id_livro` INT(10) NOT NULL,
  `data_emprestimo` DATE NULL,
  `data_devolucao` DATE NULL,
  PRIMARY KEY (`id_emprestimo`),
  INDEX `fk_emprestimo_livro1_idx` (`id_livro` ASC),
  INDEX `fk_emprestimo_cliente1_idx` (`id_cliente` ASC),
  CONSTRAINT `fk_emprestimo_cliente1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `biblioteca`.`cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimo_livro1`
    FOREIGN KEY (`id_livro`)
    REFERENCES `biblioteca`.`livro` (`id_livro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `biblioteca`.`multa` (
  `id_multa` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `valor` DECIMAL(10,2) NOT NULL,
 -- `data_multa` DATE NOT NULL,
 -- `data_pagamento` DATE NULL,
 -- `status` ENUM('pendente','pago','cancelado') NOT NULL DEFAULT 'pendente',
  PRIMARY KEY (`id_multa`),
  INDEX `fk_multa_cliente_idx` (`id_cliente` ASC),
  CONSTRAINT `fk_multa_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `biblioteca`.`cliente` (`id_cliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;