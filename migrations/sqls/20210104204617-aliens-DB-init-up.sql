/* Replace with your SQL commands */

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema aliens
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema aliens
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `aliens` ;
USE `aliens` ;

-- -----------------------------------------------------
-- Table `aliens`.`planet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aliens`.`planet` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `aliens`.`alien`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aliens`.`alien` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NOT NULL,
  `poster` TEXT NULL,
  `planet_id` INT NOT NULL,
  PRIMARY KEY (`id`, `planet_id`),
  INDEX `fk_alien_planet_idx` (`planet_id` ASC) VISIBLE,
  CONSTRAINT `fk_alien_planet`
    FOREIGN KEY (`planet_id`)
    REFERENCES `aliens`.`planet` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `aliens`.`weakness`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aliens`.`weakness` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `weakness` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `aliens`.`strength`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aliens`.`strength` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `strength` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `aliens`.`alien_has_strength`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aliens`.`alien_has_strength` (
  `alien_id` INT NOT NULL,
  `alien_planet_id` INT NOT NULL,
  `strength_id` INT NOT NULL,
  PRIMARY KEY (`alien_id`, `alien_planet_id`, `strength_id`),
  INDEX `fk_alien_has_strength_strength1_idx` (`strength_id` ASC) VISIBLE,
  INDEX `fk_alien_has_strength_alien1_idx` (`alien_id` ASC, `alien_planet_id` ASC) VISIBLE,
  CONSTRAINT `fk_alien_has_strength_alien1`
    FOREIGN KEY (`alien_id` , `alien_planet_id`)
    REFERENCES `aliens`.`alien` (`id` , `planet_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_alien_has_strength_strength1`
    FOREIGN KEY (`strength_id`)
    REFERENCES `aliens`.`strength` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `aliens`.`alien_has_weakness`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aliens`.`alien_has_weakness` (
  `alien_id` INT NOT NULL,
  `alien_planet_id` INT NOT NULL,
  `weakness_id` INT NOT NULL,
  PRIMARY KEY (`alien_id`, `alien_planet_id`, `weakness_id`),
  INDEX `fk_alien_has_weakness_weakness1_idx` (`weakness_id` ASC) VISIBLE,
  INDEX `fk_alien_has_weakness_alien1_idx` (`alien_id` ASC, `alien_planet_id` ASC) VISIBLE,
  CONSTRAINT `fk_alien_has_weakness_alien1`
    FOREIGN KEY (`alien_id` , `alien_planet_id`)
    REFERENCES `aliens`.`alien` (`id` , `planet_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_alien_has_weakness_weakness1`
    FOREIGN KEY (`weakness_id`)
    REFERENCES `aliens`.`weakness` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
