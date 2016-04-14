/*
  Huom: Tietokannassa käytetty MySQL:n AUTO_INCREMENT -ominaisuutta ja NOW() -funktiota, jotka eivät ole SQL-standardin mukaisia.
*/

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema K2264_1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema K2264_1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `K2264_1` DEFAULT CHARACTER SET utf8 ;
USE `K2264_1` ;

-- -----------------------------------------------------
-- Table `K2264_1`.`PersonGroup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `K2264_1`.`PersonGroup` (
  `ID` INT NOT NULL,
  `Description` VARCHAR(32) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `K2264_1`.`Person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `K2264_1`.`Person` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `GroupID` INT NOT NULL,
  `Name` VARCHAR(64) NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Person_Group1_idx` (`GroupID` ASC),
  CONSTRAINT `fk_Person_Group1`
    FOREIGN KEY (`GroupID`)
    REFERENCES `K2264_1`.`PersonGroup` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `K2264_1`.`Company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `K2264_1`.`Company` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(64) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `K2264_1`.`Cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `K2264_1`.`Cargo` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `CompanyID` INT NOT NULL,
  `CarrierID` INT NOT NULL,
  `Arrived` TIMESTAMP NULL DEFAULT NOW(),
  `SignerID` INT NOT NULL,
  `Signed` TIMESTAMP NULL,
  `Signature` BLOB NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Cargo_Person1_idx` (`CarrierID` ASC),
  INDEX `fk_Cargo_Company2_idx` (`CompanyID` ASC),
  INDEX `fk_Cargo_Person2_idx` (`SignerID` ASC),
  CONSTRAINT `fk_Cargo_Person1`
    FOREIGN KEY (`CarrierID`)
    REFERENCES `K2264_1`.`Person` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cargo_Company2`
    FOREIGN KEY (`CompanyID`)
    REFERENCES `K2264_1`.`Company` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cargo_Person2`
    FOREIGN KEY (`SignerID`)
    REFERENCES `K2264_1`.`Person` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `K2264_1`.`CargoItem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `K2264_1`.`CargoItem` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `CargoID` INT NOT NULL,
  `Type` VARCHAR(45) NULL,
  `Content` VARCHAR(64) NOT NULL,
  `Number` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_CargoItem_Cargo1_idx` (`CargoID` ASC),
  CONSTRAINT `fk_CargoItem_Cargo1`
    FOREIGN KEY (`CargoID`)
    REFERENCES `K2264_1`.`Cargo` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `K2264_1`.`Reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `K2264_1`.`Reservation` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `CargoID` INT NOT NULL,
  `Description` VARCHAR(1024) NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Reservation_Cargo1_idx` (`CargoID` ASC),
  CONSTRAINT `fk_Reservation_Cargo1`
    FOREIGN KEY (`CargoID`)
    REFERENCES `K2264_1`.`Cargo` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `K2264_1`.`SpecialCargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `K2264_1`.`SpecialCargo` (
  `CargoID` INT NOT NULL,
  `SignerID` INT NOT NULL,
  `Signature` BLOB NULL,
  INDEX `fk_SpecialCargo_Cargo1_idx` (`CargoID` ASC),
  PRIMARY KEY (`CargoID`),
  CONSTRAINT `fk_SpecialCargo_Cargo1`
    FOREIGN KEY (`CargoID`)
    REFERENCES `K2264_1`.`Cargo` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
