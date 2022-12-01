-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema team_4_database
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema team_4_database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `team_4_database` DEFAULT CHARACTER SET utf8 ;
USE `team_4_database` ;

-- -----------------------------------------------------
-- Table `team_4_database`.`Damages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team_4_database`.`Damages` (
  `damage_id` INT NOT NULL,
  `structural_damage` INT NOT NULL,
  `people_fatalities` INT NULL,
  `cost` INT NULL,
  PRIMARY KEY (`damage_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_database`.`Timeframe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team_4_database`.`Timeframe` (
  `time_frame_id` INT NOT NULL,
  `start_date` DATETIME NOT NULL,
  `end_date` DATETIME NULL,
  PRIMARY KEY (`time_frame_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_database`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team_4_database`.`status` (
  `status_id` INT NOT NULL,
  `ongoing` TINYINT NOT NULL,
  PRIMARY KEY (`status_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_database`.`disaster_length`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team_4_database`.`disaster_length` (
  `length_id` INT NOT NULL,
  `days` INT NOT NULL,
  `hours` VARCHAR(45) NULL,
  `minutes` VARCHAR(45) NULL,
  `time_frame_id` INT NOT NULL,
  `disaster_lengthcol` VARCHAR(45) NULL,
  `status_id` INT NOT NULL,
  PRIMARY KEY (`length_id`),
  INDEX `fk_disaster_length_Timeframe1_idx` (`time_frame_id` ASC) VISIBLE,
  INDEX `fk_disaster_length_status1_idx` (`status_id` ASC) VISIBLE,
  CONSTRAINT `fk_disaster_length_Timeframe1`
    FOREIGN KEY (`time_frame_id`)
    REFERENCES `team_4_database`.`Timeframe` (`time_frame_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disaster_length_status1`
    FOREIGN KEY (`status_id`)
    REFERENCES `team_4_database`.`status` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_database`.`Disaster`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team_4_database`.`Disaster` (
  `Disaster_id` INT NOT NULL,
  `Wildfire` TINYINT NOT NULL,
  `Earthquake` TINYINT NOT NULL,
  `Tsunami` TINYINT NOT NULL,
  `Landslide` TINYINT NOT NULL,
  `damage_id` INT NOT NULL,
  `length_id` INT NOT NULL,
  `size_id` INT NOT NULL,
  PRIMARY KEY (`Disaster_id`),
  INDEX `fk_Disaster_Damages1_idx` (`damage_id` ASC) VISIBLE,
  INDEX `fk_Disaster_disaster_length1_idx` (`length_id` ASC) VISIBLE,
  CONSTRAINT `fk_Disaster_Damages1`
    FOREIGN KEY (`damage_id`)
    REFERENCES `team_4_database`.`Damages` (`damage_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Disaster_disaster_length1`
    FOREIGN KEY (`length_id`)
    REFERENCES `team_4_database`.`disaster_length` (`length_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_database`.`Location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team_4_database`.`Location` (
  `County_id` INT NOT NULL,
  `zipcode` INT NULL,
  `state` VARCHAR(45) NULL,
  `population` VARCHAR(45) NULL,
  PRIMARY KEY (`County_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_database`.`size_of_disaster`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team_4_database`.`size_of_disaster` (
  `size_id` INT NOT NULL,
  `perimeter` INT NOT NULL,
  `magnitude` INT NOT NULL,
  `size` VARCHAR(45) NULL,
  `area_impacted` VARCHAR(45) NULL,
  PRIMARY KEY (`size_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_database`.`federal_response`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team_4_database`.`federal_response` (
  `declaration_id` INT NOT NULL,
  `declaration_of_emergency` DATETIME NOT NULL,
  `length_of_declaration` INT NULL,
  `time_frame_id` INT NOT NULL,
  PRIMARY KEY (`declaration_id`),
  INDEX `fk_federal_response_Timeframe_idx` (`time_frame_id` ASC) VISIBLE,
  CONSTRAINT `fk_federal_response_Timeframe`
    FOREIGN KEY (`time_frame_id`)
    REFERENCES `team_4_database`.`Timeframe` (`time_frame_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_database`.`Location_has_Disaster`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team_4_database`.`Location_has_Disaster` (
  `County_id` INT NOT NULL,
  `Disaster_id` INT NOT NULL,
  PRIMARY KEY (`County_id`, `Disaster_id`),
  INDEX `fk_Location_has_Disaster_Disaster1_idx` (`Disaster_id` ASC) VISIBLE,
  INDEX `fk_Location_has_Disaster_Location1_idx` (`County_id` ASC) VISIBLE,
  CONSTRAINT `fk_Location_has_Disaster_Location1`
    FOREIGN KEY (`County_id`)
    REFERENCES `team_4_database`.`Location` (`County_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Location_has_Disaster_Disaster1`
    FOREIGN KEY (`Disaster_id`)
    REFERENCES `team_4_database`.`Disaster` (`Disaster_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
