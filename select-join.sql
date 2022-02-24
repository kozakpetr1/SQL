SELECT * FROM `plang`.`lang`, `plang`.`author`
INNER JOIN `plang`.`createdby`
WHERE `createdby`.`lang_idlang` = `lang`.`idlang`
AND `createdby`.`author_idauthor` = `author`.`idauthor`;

SELECT `lang`.`designation`, `author`.`firstname`, `author`.`surname`
FROM `plang`.`lang`, `plang`.`author`
INNER JOIN `plang`.`createdby`
WHERE `createdby`.`lang_idlang` = `lang`.`idlang`
AND `createdby`.`author_idauthor` = `author`.`idauthor`;