
drop schema if exists tsbdb;
-- -----------------------------------------------------
-- Schema tsbdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tsbdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `tsbdb` ;

-- -----------------------------------------------------
-- Table `tsbdb`.`BUSINESS_TYPE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tsbdb`.`BUSINESS_TYPE` (
  `businessType` VARCHAR(5) NOT NULL,
  `businessDesc` VARCHAR(200) NULL,
  PRIMARY KEY (`businessType`));


-- -----------------------------------------------------
-- Table `tsbdb`.`BUSINESS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tsbdb`.`BUSINESS` (
  `businessID` INT NOT NULL,
  `businessType` VARCHAR(5) NULL,
  `userID` VARCHAR(45) NULL,
  `pwd` VARCHAR(45) NULL,
  `descr` VARCHAR(1000) NULL,
  `fName` VARCHAR(45) NULL,
  `lName` VARCHAR(45) NULL,
  `addr1` VARCHAR(45) NULL,
  `addr2` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `zip` VARCHAR(10) NULL,
  PRIMARY KEY (`businessID`),
    CONSTRAINT `b_type_fk`
    FOREIGN KEY (`businessType`)
    REFERENCES `tsbdb`.`BUSINESS_TYPE` (`businessType`));


-- -----------------------------------------------------
-- Table `tsbdb`.`RECEIPT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tsbdb`.`RECEIPT` (
  `businessID` INT NOT NULL,
  `receiptID` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`businessID`, `receiptID`),
  CONSTRAINT `business_fk`
    FOREIGN KEY (`businessID`)
    REFERENCES `tsbdb`.`BUSINESS` (`businessID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `tsbdb`.`REVIEW`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tsbdb`.`REVIEW` (
  `businessID` INT NOT NULL,
  `receiptID` VARCHAR(10) NOT NULL,
  `review` VARCHAR(1000) NULL,
  `response` VARCHAR(1000) NULL,
  `status` VARCHAR(1) NULL,
  `review_date` DATETIME NULL,
  `response_date` DATETIME NULL,
  PRIMARY KEY (`businessID`, `receiptID`),
   CONSTRAINT `cust_fk`
    FOREIGN KEY ( `businessID` ,`receiptID`)
    REFERENCES `tsbdb`.`RECEIPT` (`businessID` , `receiptID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

