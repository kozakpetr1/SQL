-- --------------------------------------------------------------------------------
-- Selekce řádků splňujících podmínku, že sloupec designation začína na písmeno A
-- --------------------------------------------------------------------------------
SELECT * FROM `plang`.`lang`
WHERE `designation` LIKE 'A%';

-- --------------------------------------------------------------------------------
-- Selekce řádků splňujících podmínku, že sloupec designation končí na písmeno e
-- --------------------------------------------------------------------------------
SELECT * FROM `plang`.`lang`
WHERE `designation` LIKE '%e';

-- ---------------------------------------------------------------------------------------
-- Selekce řádků splňujících podmínku, že sloupec designation začíná na A a neobsahuje ss
-- ---------------------------------------------------------------------------------------
SELECT * FROM `plang`.`lang`
WHERE `designation` LIKE 'A%' AND `designation` NOT LIKE '%ss%';

-- ---------------------------------------------------------------------------------------
-- řetězec začíná libovolným znakem, následovaným písmenem d a libovolným textem
-- ---------------------------------------------------------------------------------------
SELECT * FROM `plang`.`lang`
WHERE `designation` LIKE '_d%';

-- ---------------------------------------------------------------------------------------
-- řetězec má na libovolné pozici text da
-- ---------------------------------------------------------------------------------------
SELECT * FROM `plang`.`lang`
WHERE `designation` LIKE '%da%';

-- ---------------------------------------------------------------------------------------
-- RLIKE - využití regulárních výrazů pro selekci
-- ---------------------------------------------------------------------------------------
SELECT * FROM `plang`.`lang`
WHERE `designation` RLIKE '^A.*|^B.*|^C.*' ORDER BY `designation` ASC;

-- ---------------------------------------------------------------------------------------
-- BETWEEN - interval
-- ---------------------------------------------------------------------------------------
SELECT * FROM `plang`.`lang`
WHERE `created` BETWEEN 1960 AND 1970;

SELECT * FROM `plang`.`lang`
WHERE `created` NOT BETWEEN 1960 AND 1970;