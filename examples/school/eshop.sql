CREATE SCHEMA IF NOT EXISTS `eshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci;
USE `eshop` ;

-- -----------------------------------------------------
-- Table `eshop`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eshop`.`categories` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NULL,
  `categories_id` INT UNSIGNED NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  INDEX `fk_categories_categories1_idx` (`categories_id` ASC),
  CONSTRAINT `fk_categories_categories1`
    FOREIGN KEY (`categories_id`)
    REFERENCES `eshop`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eshop`.`brands`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eshop`.`brands` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eshop`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eshop`.`products` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(255) NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `stockk_quantity` INT NOT NULL DEFAULT 1,
  `created_at` DATE NOT NULL DEFAULT now(),
  `categories_id` INT UNSIGNED NOT NULL,
  `brands_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_prodducts_categories_idx` (`categories_id` ASC),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  INDEX `fk_products_brands1_idx` (`brands_id` ASC),
  CONSTRAINT `fk_prodducts_categories`
    FOREIGN KEY (`categories_id`)
    REFERENCES `eshop`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_products_brands1`
    FOREIGN KEY (`brands_id`)
    REFERENCES `eshop`.`brands` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
