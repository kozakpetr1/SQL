CREATE SCHEMA
IF NOT EXISTS person
DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci;

USE person;

CREATE TABLE IF NOT EXISTS voter (
    id INT NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(40) NOT NULL,
    age TINYINT UNSIGNED, 
    alive TINYINT UNSIGNED, 
    PRIMARY KEY (id))
ENGINE = InnoDB;

# Trigger - spouštěč
CREATE TRIGGER check_new_voter BEFORE INSERT
ON voter
FOR EACH ROW
    IF NEW.age < 18 THEN
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Voter must be older than 18.'
    END IF;
delimiter ;
CREATE TRIGGER check_voter_alive BEFORE INSERT
ON voter
FOR EACH ROW
    IF NEW.alive = 0 THEN
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Voter must be alive.';
    END IF;

INSERT INTO voter (id, firstname, lastname, age, alive)
VALUES (NULL, 'Petr', 'Kozák', 49, 1);

CREATE TRIGGER ins_sum BEFORE INSERT ON account
FOR EACH ROW SET @sum = @sum + NEW.amount;

INSERT INTO voter (id, firstname, lastname, age, alive) VALUES
    (NULL, 'Jana', 'Nováková', 25, 1),
    (NULL, 'Klaudius', 'Picmaus', 19, 1),
    (NULL, 'Pavel', 'Uc', 31, 1);

INSERT INTO voter (id, firstname, lastname, age, alive)
VALUES (NULL, 'Klaudius', 'Picmaus', '73', '0');

INSERT INTO voter (id, firstname, lastname, age, alive)
VALUES (NULL, 'Eva', 'Rychlá', '17', '0');

