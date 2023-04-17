-- -----------------------------------------------------
-- DML - základní syntaxe dotazu UPDATE
-- -----------------------------------------------------
UPDATE `plang`.`author`
SET company = 'Bell Labs'
WHERE surname = 'Kernighan' AND firstname = 'Brian';

UPDATE plang.author
SET company = 'Bell Labs'
WHERE surname = 'Ritchie' AND firstname = 'Dennis';

UPDATE plang.author
SET surname = UPPER(surname);

UPDATE plang.author
SET surname = CONCAT(UPPER(SUBSTRING(surname,1,1)),LOWER(SUBSTRING(surname,2)));