SELECT *
FROM plang.author;

SELECT *
FROM plang.lang;

SELECT
    COUNT(DISTINCT firstname) AS pocet
FROM plang.author;

SELECT * FROM plang.lang
WHERE idlang = 10;

SELECT * FROM plang.lang
WHERE designation = "COBOL";

SELECT * FROM plang.lang
WHERE idlang < 10;

SELECT * FROM plang.lang
WHERE idlang > 10
LIMIT 10;

SELECT * FROM plang.lang
WHERE idlang >= 10
LIMIT 10;

SELECT designation FROM plang.lang
WHERE designation LIKE "C" OR
    designation LIKE "C_";

SELECT designation FROM plang.lang
WHERE designation LIKE "_C%";

SELECT designation FROM plang.lang
WHERE designation LIKE "%C";

SELECT designation FROM plang.lang
WHERE designation LIKE "C%L";

SELECT designation FROM plang.lang
WHERE designation LIKE "C%" AND
    designation LIKE "%L";

SELECT idlang, designation FROM plang.lang
WHERE designation LIKE "C%" AND
    NOT idlang < 20;

SELECT idlang, designation FROM plang.lang
WHERE designation LIKE "C%" AND
    NOT idlang < 20
ORDER BY designation ASC;

SELECT firstname, surname FROM plang.author
WHERE surname LIKE "B%"
ORDER BY surname DESC;
