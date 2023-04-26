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
CALL add_author('Ervín', 'Drahorád', NULL);
CALL add_author('Klaudius', 'Picmaus', NULL);