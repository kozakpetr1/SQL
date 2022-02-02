-- --------------------------------------------------------------------------------
-- COUNT - agregační funkce zobrazí počet řádků splňujících zadaná kritéria
-- --------------------------------------------------------------------------------
SELECT COUNT(`created`) AS `pocet`
FROM `plang`.`lang`
WHERE `created`=1995;

-- --------------------------------------------------------------------------------
-- COUNT - agregační funkce vrací průměrnou hodnotu ve vybraném numerickém sloupci
-- --------------------------------------------------------------------------------
SELECT CONVERT(AVG(`created`), DECIMAL(10,2)) AS `prumer-1995-2014`
FROM `plang`.`lang`
WHERE `created` >= 1995;

-- --------------------------------------------------------------------------------
-- SUM - agregační funkce vrací součet hodnot ve vybraném numerickém sloupci
-- --------------------------------------------------------------------------------
SELECT SUM(`created`) AS `soucet-created`
FROM `plang`.`lang`;

-- --------------------------------------------------------------------------------
-- MIN - agregační funkce vrací nejmenší ve vybraném numerickém sloupci
-- --------------------------------------------------------------------------------
SELECT MIN(`created`) AS `min-created`
FROM `plang`.`lang`;

-- --------------------------------------------------------------------------------
-- MAX - agregační funkce vrací největší ve vybraném numerickém sloupci
-- --------------------------------------------------------------------------------
SELECT MAX(`created`) AS `max-created`
FROM `plang`.`lang`;

SELECT created, count(`created`) AS pocet
FROM `plang`.`lang`
GROUP BY `created` ORDER BY `pocet` DESC;