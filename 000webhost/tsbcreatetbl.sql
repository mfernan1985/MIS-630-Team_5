

-- -----------------------------------------------------
-- Table `tsbdb`.`BUSINESS_TYPE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BUSINESS_TYPE` (
  `businessType` VARCHAR(5) NOT NULL,
  `businessDesc` VARCHAR(200) NULL,
  PRIMARY KEY (`businessType`));


-- -----------------------------------------------------
-- Table `BUSINESS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BUSINESS` (
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
    REFERENCES `BUSINESS_TYPE` (`businessType`));


-- -----------------------------------------------------
-- Table `RECEIPT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RECEIPT` (
  `businessID` INT NOT NULL,
  `receiptID` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`businessID`, `receiptID`),
  CONSTRAINT `business_fk`
    FOREIGN KEY (`businessID`)
    REFERENCES `BUSINESS` (`businessID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `REVIEW`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `REVIEW` (
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
    REFERENCES `RECEIPT` (`businessID` , `receiptID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

