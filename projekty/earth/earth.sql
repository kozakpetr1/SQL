set autocommit = 1;
CREATE SCHEMA IF NOT EXISTS `earth` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci ;
USE earth;

-- -----------------------------------------------------
-- Table `earth`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `earth`.`country` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `population` INT NOT NULL,
  `area` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `earth`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `earth`.`city` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `population` INT NOT NULL,
  `country_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_city_country_idx` (`country_id` ASC),
  CONSTRAINT `fk_city_country`
    FOREIGN KEY (`country_id`)
    REFERENCES `earth`.`country` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO earth.country (id, name, population, `area`)
VALUES (NULL, "Czechia", 10900555, 78871);

SET @last_id = LAST_INSERT_ID()

INSERT INTO earth.city (id, name, population, `country_id`)
VALUES
  (NULL, "Prague", 1384732, @last_id),
  (NULL, "Brno", 400566, @last_id),
  (NULL, "Ostrava", 284765, @last_id),
  (NULL, "Pilsen", 185599, @last_id),
  (NULL, "Budweis", 97377, @last_id);

INSERT INTO earth.country (id, name, population, `area`)
VALUES (NULL, "Slovakia", 5422194, 49035);

SET @last_id = LAST_INSERT_ID()

INSERT INTO earth.city (id, name, population, `country_id`)
VALUES
  (NULL, "Bratislava", 475503, @last_id);

INSERT INTO earth.country (id, name, population, `area`)
VALUES (NULL, "Poland", 38036118, 312696);
