-- -----------------------------------------------------
-- Schema plang - databáze programovacích jazyků
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `plang` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci;

USE `plang`;

-- -----------------------------------------------------
-- Table `plang`.`lang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `plang`.`lang` (
    `idlang` INT NOT NULL AUTO_INCREMENT,
    `designation` VARCHAR(30) NOT NULL,
    `created` INT NULL,
    PRIMARY KEY (`idlang`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `plang`.`author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `plang`.`author` (
    `idauthor` INT NOT NULL AUTO_INCREMENT,
    `firstname` VARCHAR(30) NULL,
    `surname` VARCHAR(40) NULL,
    `company` VARCHAR(40) NULL,
    PRIMARY KEY (`idauthor`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `plang`.`createdby`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS plang.createdby (
    idcreatedby INT NOT NULL AUTO_INCREMENT,
    lang_idlang INT NOT NULL,
    author_idauthor INT NOT NULL,
    INDEX fk_createdby_lang_idx (lang_idlang ASC),
    INDEX fk_createdby_author_idx (author_idauthor ASC),
    PRIMARY KEY (idcreatedby)
)
ENGINE = InnoDB;

DROP PROCEDURE IF EXISTS add_author;
DELIMITER //
CREATE PROCEDURE add_author
    (
        IN fname VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin',
        IN sname VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin',
        IN compa VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin'
    )
    BEGIN
        INSERT INTO plang.author (idauthor, firstname, surname, company)
        VALUES (NULL, fname, sname, compa);
    END //

DELIMITER ;
INSERT INTO `plang`.`lang` (`idlang`, `designation`, `created`) VALUES
    (NULL, 'Regional Assembly Language', 1951),
    (NULL, 'Autocode', 1952),
    (NULL, 'IPL', 1954),
    (NULL, 'FLOW-MATIC', 1955),
    (NULL, 'FORTRAN', 1957),
    (NULL, 'COMTRAN', 1957),
    (NULL, 'LISP', 1958),
    (NULL, 'ALGOL 58', 1958),
    (NULL, 'FACT', 1959),
    (NULL, 'COBOL', 1959),
    (NULL, 'RPG', 1959),
    (NULL, 'APL', 1962),
    (NULL, 'Simula', 1962),
    (NULL, 'SNOBOL', 1962),
    (NULL, 'CPL', 1963),
    (NULL, 'Speakeasy', 1964),
    (NULL, 'BASIC', 1964),
    (NULL, 'PL/I', 1964),
    (NULL, 'JOSS', 1966),
    (NULL, 'MUMPS', 1966),
    (NULL, 'BCPL', 1967),
    (NULL, 'LOGO', 1968),
    (NULL, 'B', 1968),
    (NULL, 'Pascal', 1970),
    (NULL, 'Forth', 1970),
    (NULL, 'C', 1972),
    (NULL, 'Smalltalk', 1972),
    (NULL, 'Prolog', 1972),
    (NULL, 'ML', 1973),
    (NULL, 'Scheme', 1975),
    (NULL, 'SQL', 1978),
    (NULL, 'C++', 1980),
    (NULL, 'Ada', 1983),
    (NULL, 'Common Lisp', 1984),
    (NULL, 'MATLAB', 1984),
    (NULL, 'Eiffel', 1985),
    (NULL, 'Objective-C', 1986),
    (NULL, 'LabVIEW', 1986),
    (NULL, 'Erlang', 1986),
    (NULL, 'Perl', 1987),
    (NULL, 'Tcl', 1988),
    (NULL, 'Wolfram language', 1988),
    (NULL, 'FL', 1989),
    (NULL, 'Haskell', 1990),
    (NULL, 'Python', 1990),
    (NULL, 'Visual Basic', 1991),
    (NULL, 'Lua', 1993),
    (NULL, 'R', 1993),
    (NULL, 'CLOS', 1994),
    (NULL, 'Ruby', 1995),
    (NULL, 'Ada 95', 1995),
    (NULL, 'Java', 1995),
    (NULL, 'Delphi (Object Pascal)', 1995),
    (NULL, 'JavaScript', 1995),
    (NULL, 'PHP', 1995),
    (NULL, 'Rebol', 1997),
    (NULL, 'ActionScript', 2000),
    (NULL, 'C#', 2001),
    (NULL, 'D', 2001),
    (NULL, 'Scratch', 2002),
    (NULL, 'Groovy', 2003),
    (NULL, 'Scala', 2003),
    (NULL, 'F#', 2005),
    (NULL, 'HolyC', 2005),
    (NULL, 'PowerShell', 2006),
    (NULL, 'Newspeak', 2006),
    (NULL, 'Clojure', 2007),
    (NULL, 'Nim', 2008),
    (NULL, 'Go', 2009),
    (NULL, 'Rust', 2010),
    (NULL, 'Dart', 2011),
    (NULL, 'Kotlin', 2011),
    (NULL, 'Elixir', 2011),
    (NULL, 'Julia', 2012),
    (NULL, 'TypeScript', 2012),
    (NULL, 'Swift', 2014);

INSERT INTO `plang`.`author` (`idauthor`, `firstname`, `surname`, `company`) VALUES
    (NULL, 'John', 'Backus', NULL),
    (NULL, 'Friedrich L.', 'Bauer', NULL),
    (NULL, 'Kathleen', 'Booth', NULL),
    (NULL, 'Gilad', 'Bracha', NULL),
    (NULL, 'Walter', 'Bright', NULL),
    (NULL, 'Alain', 'Colmerauer', NULL),
    (NULL, 'Ole-Johan', 'Dahl', NULL),
    (NULL, 'Brendan', 'Eich', NULL),
    (NULL, 'James', 'Gosling', NULL),
    (NULL, 'Ralph', 'Griswold', NULL),
    (NULL, 'Anders', 'Hejlsberg', NULL),
    (NULL, 'Rich', 'Hickey', NULL),
    (NULL, 'Grace', 'Hopper', NULL),
    (NULL, 'Roberto', 'Ierusalimschy', NULL),
    (NULL, 'Simon Peyton', 'Jones', NULL),
    (NULL, 'Alan', 'Kay', NULL),
    (NULL, 'John G.', 'Kemeny', NULL),
    (NULL, 'Thomas E.', 'Kurtz', NULL),
    (NULL, 'Brian', 'Kernighan', NULL),
    (NULL, 'Chris', 'Lattner', NULL),
    (NULL, 'Rasmus', 'Lerdorf', NULL),
    (NULL, 'Xavier', 'Leroy', NULL),
    (NULL, 'Yukihiro', 'Matsumoto', NULL),
    (NULL, 'John', 'McCarthy', NULL),
    (NULL, 'Kristen', 'Nygaard', NULL),
    (NULL, 'Martin', 'Odersky', NULL),
    (NULL, 'John', 'Ousterhout', NULL),
    (NULL, 'Rob', 'Pike', NULL),
    (NULL, 'Cicely', 'Popplewell', NULL),
    (NULL, 'Dennis', 'Ritchie', NULL),
    (NULL, 'Matthias', 'Felleisen', NULL),
    (NULL, 'Guido', 'van Rossum', NULL),
    (NULL, 'Guy L.', 'Steele, Jr.', NULL),
    (NULL, 'Bjarne', 'Stroustrup', NULL),
    (NULL, 'Gerald Jay', 'Sussman', NULL),
    (NULL, 'Don', 'Syme', NULL),
    (NULL, 'Ken', 'Thompson', NULL),
    (NULL, 'Larry', 'Wall', NULL),
    (NULL, 'Philip', 'Wadler', NULL),
    (NULL, 'Niklaus', 'Wirth', NULL),
    (NULL, 'Stephen', 'Wolfram', NULL);
INSERT INTO `plang`.`createdby` (`idcreatedby`,  `lang_idlang`, `author_idauthor`)
    SELECT NULL, `lang`.`idlang`, `author`.`idauthor` FROM `lang`, `author`
    WHERE `lang`.`designation` = 'FORTRAN' AND `author`.`surname` = 'Backus'; 

INSERT INTO `plang`.`createdby` (`idcreatedby`,  `lang_idlang`, `author_idauthor`)
    SELECT NULL, `lang`.`idlang`, `author`.`idauthor` FROM `lang`, `author`
    WHERE `lang`.`designation` = 'ALGOL 58' AND `author`.`surname` = 'Bauer';

INSERT INTO `plang`.`createdby` (`idcreatedby`,  `lang_idlang`, `author_idauthor`)
    SELECT NULL, `lang`.`idlang`, `author`.`idauthor` FROM `lang`, `author`
    WHERE `lang`.`designation` = 'Newspeak' AND `author`.`surname` = 'Bracha';

INSERT INTO `plang`.`createdby` (`idcreatedby`,  `lang_idlang`, `author_idauthor`)
    SELECT NULL, `lang`.`idlang`, `author`.`idauthor` FROM `lang`, `author`
    WHERE `lang`.`designation` = 'Prolog' AND `author`.`surname` = 'Colmerauer';

INSERT INTO `plang`.`createdby` (`idcreatedby`,  `lang_idlang`, `author_idauthor`)
    SELECT NULL, `lang`.`idlang`, `author`.`idauthor` FROM `lang`, `author`
    WHERE `lang`.`designation` = 'JavaScript' AND `author`.`surname` = 'Eich';

INSERT INTO `plang`.`createdby` (`idcreatedby`,  `lang_idlang`, `author_idauthor`)
    SELECT NULL, `lang`.`idlang`, `author`.`idauthor` FROM `lang`, `author`
    WHERE `lang`.`designation` = 'Java' AND `author`.`surname` = 'Gosling';

INSERT INTO `plang`.`createdby` (`idcreatedby`,  `lang_idlang`, `author_idauthor`)
    SELECT NULL, `lang`.`idlang`, `author`.`idauthor` FROM `lang`, `author`
    WHERE `lang`.`designation` = 'COBOL' AND `author`.`surname` = 'Hopper';

INSERT INTO `plang`.`createdby` (`idcreatedby`,  `lang_idlang`, `author_idauthor`)
    SELECT NULL, `lang`.`idlang`, `author`.`idauthor` FROM `lang`, `author`
    WHERE `lang`.`designation` = 'Smalltalk' AND `author`.`surname` = 'Kay';