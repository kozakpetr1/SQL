-- -----------------------------------------------------
-- Schema up
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `up` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci;
USE `up` ;

-- -----------------------------------------------------
-- Table `up`.`contribution`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `up`.`contribution` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `denamd` DATE NOT NULL,
  `closed` TINYINT UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `up`.`person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `up`.`person` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `birth` DATE NOT NULL,
  `contribution_id` INT UNSIGNED NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_person_contribution1_idx` (`contribution_id`),
  CONSTRAINT `person_UNIQUE` UNIQUE (`first_name`, `last_name`, `birth`),
  CONSTRAINT `fk_person_contribution1`
    FOREIGN KEY (`contribution_id`)
    REFERENCES `up`.`contribution` (`id`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `up`.`contract`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `up`.`contract` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `begin` DATE NOT NULL,
  `end` DATE NULL,
  `erly_termination` DATE NULL,
  `cancel_proposal` DATE NULL,
  `person_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_contract_person_idx` (`person_id`),
  CONSTRAINT `fk_contract_person`
    FOREIGN KEY (`person_id`)
    REFERENCES `up`.`person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT check_date CHECK (end > begin))
ENGINE = InnoDB;
