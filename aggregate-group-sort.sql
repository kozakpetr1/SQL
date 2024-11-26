-- --------------------------------------------------------------------------------
-- COUNT - agregační funkce zobrazí počet řádků splňujících zadaná kritéria
-- --------------------------------------------------------------------------------
SELECT COUNT(created) AS pocet
FROM plang.lang
WHERE created=1995;

-- --------------------------------------------------------------------------------
-- AVG - agregační funkce vrací průměrnou hodnotu ve vybraném numerickém sloupci
-- --------------------------------------------------------------------------------
SELECT CONVERT(AVG(created), DECIMAL(10,2)) AS prumer_1995_2014
FROM plang.lang
WHERE created >= 1995;

-- --------------------------------------------------------------------------------
-- SUM - agregační funkce vrací součet hodnot ve vybraném numerickém sloupci
-- --------------------------------------------------------------------------------
SELECT SUM(DISTINCT created) AS soucet_created
FROM plang.lang;

-- --------------------------------------------------------------------------------
-- MIN - agregační funkce vrací nejmenší hodnotu ve vybraném numerickém sloupci
-- --------------------------------------------------------------------------------
SELECT MIN(created) AS mincreated
FROM plang.lang;

-- --------------------------------------------------------------------------------
-- MAX - agregační funkce vrací největší hodnotu ve vybraném numerickém sloupci
-- --------------------------------------------------------------------------------
SELECT MAX(created) AS maxcreated
FROM plang.lang;

-- --------------------------------------------------------------------------------
-- GROUP BY - seskupuje řádky, které mají stejné hodnoty, do souhrnných řádků
-- ORDER BY - seřazení sady výsledků ve vzestupném (ASC) nebo sestupném (DESC) pořadí
-- --------------------------------------------------------------------------------
SELECT created, count(created) AS pocet
FROM plang.lang
GROUP BY created ORDER BY pocet DESC;