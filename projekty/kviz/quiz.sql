-- -----------------------------------------------------
-- Schema quiz
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `quiz` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci ;
USE `quiz` ;

-- -----------------------------------------------------
-- Table `quiz`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`category` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`question`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`question` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `txt` VARCHAR(100) NOT NULL,
  `category_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `txt_UNIQUE` (`txt` ASC) ,
  INDEX `fk_question_category1_idx` (`category_id` ASC) ,
  CONSTRAINT `fk_question_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `quiz`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`answer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`answer` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `txt` VARCHAR(100) NOT NULL,
  `right` ENUM('NO', 'YES') NOT NULL DEFAULT 'NO',
  `question_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_answer_question1_idx` (`question_id` ASC) ,
  CONSTRAINT `fk_answer_question1`
    FOREIGN KEY (`question_id`)
    REFERENCES `quiz`.`question` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`answer_has_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`answer_has_user` (
  `answer_id` INT UNSIGNED NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  `answered` DATETIME NOT NULL,
  PRIMARY KEY (`answer_id`, `user_id`),
  INDEX `fk_answer_has_user_user1_idx` (`user_id` ASC) ,
  INDEX `fk_answer_has_user_answer1_idx` (`answer_id` ASC) ,
  CONSTRAINT `fk_answer_has_user_answer1`
    FOREIGN KEY (`answer_id`)
    REFERENCES `quiz`.`answer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_answer_has_user_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `quiz`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
