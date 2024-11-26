# Propojení dvou tabulek pomocí klauzule JOIN (INNER JOIN).
# Dotaz vrátí jazyky, jejich autory a roky vzniku.

SELECT
    lang.idlang,
    createdby.author_idauthor,
    lang.designation,
    lang.created
FROM plang.lang
INNER JOIN plang.createdby
ON lang.idlang = createdby.lang_idlang;

SELECT
    lang.idlang,
    createdby.author_idauthor,
    lang.designation,
    lang.created
FROM plang.lang
LEFT JOIN plang.createdby
ON lang.idlang = createdby.lang_idlang;

SELECT
    lang.idlang,
    createdby.author_idauthor,
    lang.designation,
    lang.created
FROM plang.lang
RIGHT JOIN plang.createdby
ON lang.idlang = createdby.lang_idlang;

SELECT * FROM plang.lang
FULL JOIN plang.createdby
ON lang.idlang = createdby.lang_idlang;

SELECT 
    lang.designation AS programming_language,
    CONCAT(UPPER(surname), " ", firstname) AS author,
    lang.created
FROM 
    plang.lang, plang.author
INNER JOIN 
    plang.createdby
WHERE
    lang.idlang = createdby.lang_idlang
    AND author.idauthor = createdby.author_idauthor;

SELECT *
FROM plang.lang, plang.createdby
WHERE lang.idlang = createdby.lang_idlang;

SELECT *
FROM plang.lang
LEFT JOIN plang.createdby
ON lang.idlang = createdby.lang_idlang;

SELECT *
FROM plang.lang
LEFT JOIN plang.createdby
ON lang.idlang = createdby.lang_idlang
WHERE createdby.lang_idlang IS NULL;

SELECT *
FROM plang.lang
RIGHT JOIN plang.createdby
ON lang.idlang = createdby.lang_idlang;

SELECT *
FROM plang.lang
RIGHT JOIN plang.createdby
ON lang.idlang = createdby.lang_idlang
WHERE lang.idlang IS NULL;

SELECT *
FROM plang.lang
CROSS JOIN plang.createdby;

SELECT *
FROM plang.lang, plang.createdby;

SELECT * FROM plang.lang WHERE lang.idlang BETWEEN 5 AND 7
UNION
SELECT * FROM plang.lang WHERE lang.idlang BETWEEN 6 AND 8;

SELECT * FROM plang.lang WHERE lang.idlang BETWEEN 5 AND 7
UNION ALL
SELECT * FROM plang.lang WHERE lang.idlang BETWEEN 6 AND 8;

SELECT * FROM plang.lang, plang.author
INNER JOIN plang.createdby
WHERE createdby.lang_idlang = lang.idlang
AND createdby.author_idauthor = author.idauthor;

SELECT lang.designation, author.firstname, author.surname
FROM plang.lang, plang.author
INNER JOIN plang.createdby
WHERE createdby.lang_idlang = lang.idlang
AND createdby.author_idauthor = author.idauthor;

# Výběr počtu hodnot bez klauzule DISTINCT.
SELECT COUNT(createdby.lang_idlang) FROM plang.createdby;

# Výběr počtu neopakujících (různých) se hodnot pomocí klauzule DISTINCT.
SELECT COUNT(DISTINCT createdby.lang_idlang) FROM plang.createdby;