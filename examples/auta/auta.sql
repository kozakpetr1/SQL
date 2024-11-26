-- -----------------------------------------------------
-- Schema auta
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `auta` DEFAULT CHARACTER SET utf8 ;
USE `auta` ;

-- -----------------------------------------------------
-- Table `auta`.`vlastnik`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auta`.`vlastnik` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `prijmeni` VARCHAR(45) NOT NULL,
  `jmeno` VARCHAR(45) NOT NULL,
  `osoba` ENUM('fyzická', 'právnická') NOT NULL DEFAULT 'fyzická',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `auta`.`auto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auta`.`auto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `znacka` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `rok` INT NOT NULL,
  `karoserie` VARCHAR(45) NULL,
  `barva` VARCHAR(45) NULL,
  `STK` DATE NULL,
  `palivo` VARCHAR(45) NULL,
  `prevodovka` VARCHAR(45) NULL,
  `motor` VARCHAR(45) NULL,
  `vykon` VARCHAR(45) NULL,
  `emise` VARCHAR(45) NULL,
  `autocol` VARCHAR(45) NULL,
  `cena` INT NOT NULL,
  `vlastnik_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_auto_vlastnik_idx` (`vlastnik_id` ASC),
  CONSTRAINT `fk_auto_vlastnik`
    FOREIGN KEY (`vlastnik_id`)
    REFERENCES `auta`.`vlastnik` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

