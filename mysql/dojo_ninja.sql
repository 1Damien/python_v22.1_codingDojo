-- MySQL Script generated by MySQL Workbench
-- Tue Jul  2 17:27:33 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`dojo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dojo` (
  `id` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `mydb`.`ninja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ninja` (
  `id` INT NOT NULL,
  `dojo_id1` INT NOT NULL,
  `first_name` VARCHAR(255) NULL,
  `last_name` VARCHAR(32) NULL,
  `age` INT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `dojo_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ninja_dojo_idx` (`dojo_id1` ASC) VISIBLE,
  CONSTRAINT `fk_ninja_dojo`
    FOREIGN KEY (`dojo_id1`)
    REFERENCES `mydb`.`dojo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;