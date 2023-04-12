CREATE SCHEMA IF NOT EXISTS school DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci;

USE school;

CREATE TABLE IF NOT EXISTS school.pupil (
    id INT NOT NULL AUTO_INCREMENT,
    personalIDNumber VARCHAR(10) UNIQUE,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    PRIMARY KEY (id))
ENGINE = InnoDB;

INSERT INTO school.pupil (id, personalIDNumber, firstname, lastname) VALUES
    (NULL, '', '', ''),
    (NULL, '', '', ''),
    (NULL, '', '', ''),
    (NULL, '', '', ''),
    (NULL, '', '', '');
