-- MySQL Script generated by MySQL Workbench
-- Thu Feb  3 12:36:40 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema knihovna
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema knihovna
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `knihovna` DEFAULT CHARACTER SET utf8 ;
USE `knihovna` ;

-- -----------------------------------------------------
-- Table `knihovna`.`Oddělení`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `knihovna`.`Oddělení` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Název` VARCHAR(45) NOT NULL,
  `Zaměření` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `knihovna`.`Knihy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `knihovna`.`Knihy` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Název` VARCHAR(45) NOT NULL,
  `Autor` VARCHAR(45) NOT NULL,
  `Počet_Stran` INT NOT NULL,
  `Žánr` VARCHAR(45) NOT NULL,
  `Status` ENUM("Vypůjčeno", "Na Prodejně") NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `knihovna`.`Zaměstnanci`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `knihovna`.`Zaměstnanci` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Jméno` VARCHAR(45) NOT NULL,
  `Příjmení` VARCHAR(45) NOT NULL,
  `Datum_Narození` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;