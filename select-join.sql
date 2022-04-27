SELECT *
FROM `plang`.`lang`
JOIN `plang`.`createdby`
ON `lang`.`idlang` = `createdby`.`lang_idlang`;

SELECT *
FROM `plang`.`lang`
INNER JOIN `plang`.`createdby`
ON `lang`.`idlang` = `createdby`.`lang_idlang`;

SELECT *
FROM `plang`.`lang`
LEFT JOIN `plang`.`createdby`
ON `lang`.`idlang` = `createdby`.`lang_idlang`;

SELECT *
FROM `plang`.`lang`
RIGHT JOIN `plang`.`createdby`
ON `lang`.`idlang` = `createdby`.`lang_idlang`;

SELECT *
FROM `plang`.`lang`
CROSS JOIN `plang`.`createdby`;

SELECT *
FROM `plang`.`lang`, `plang`.`createdby`;

SELECT * FROM `plang`.`lang` WHERE `lang`.`idlang` BETWEEN 5 AND 7
UNION
SELECT * FROM `plang`.`lang` WHERE `lang`.`idlang` BETWEEN 6 AND 8;

SELECT * FROM `plang`.`lang` WHERE `lang`.`idlang` BETWEEN 5 AND 7
UNION ALL
SELECT * FROM `plang`.`lang` WHERE `lang`.`idlang` BETWEEN 6 AND 8;

SELECT * FROM `plang`.`lang`, `plang`.`author`
INNER JOIN `plang`.`createdby`
WHERE `createdby`.`lang_idlang` = `lang`.`idlang`
AND `createdby`.`author_idauthor` = `author`.`idauthor`;

SELECT `lang`.`designation`, `author`.`firstname`, `author`.`surname`
FROM `plang`.`lang`, `plang`.`author`
INNER JOIN `plang`.`createdby`
WHERE `createdby`.`lang_idlang` = `lang`.`idlang`
AND `createdby`.`author_idauthor` = `author`.`idauthor`;