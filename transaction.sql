SET autocommit = 0;

START TRANSACTION;
    UPDATE `plang`.`author`
    SET company = 'Bell Labs'
    WHERE surname = 'Kernighan' AND firstname = 'Brian';
    UPDATE `plang`.`author`
    SET company = 'Bell Labs'
    WHERE surname = 'Ritchie' AND firstname = 'Dennis';
COMMIT;
# ROLLBACK;
SET autocommit = 1;