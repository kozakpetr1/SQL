-- -----------------------------------------------------
-- DML - základní syntaxe dotazu UPDATE
-- -----------------------------------------------------
UPDATE `plang`.`author`
SET company = 'Bell Labs'
WHERE surname = 'Kernighan' AND firstname = 'Brian';

UPDATE `plang`.`author`
SET company = 'Bell Labs'
WHERE surname = 'Ritchie' AND firstname = 'Dennis';