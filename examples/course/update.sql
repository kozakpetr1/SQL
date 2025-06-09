-- 1.a) Jednoduchý update: změna názvu kurzu s id = 1
UPDATE course
SET name = 'Programování v Pythonu - úplní začátečníci'
WHERE id = 1;

-- 1.b) Update s WHERE: změna úrovně kurzu pro všechny kurzy s názvem obsahujícím 'Pokročilí'
UPDATE course
SET level = 'Advanced'
WHERE name LIKE '%pokročilí%';

-- 1.c) Update s více podmínkami: změna popisu kurzu pro kurz s konkrétním lektorem a úrovní
UPDATE course
SET description = 'Pokročilý kurz programování v C++ s praktickými příklady.'
WHERE lecturer_id = 5 AND level = 'Advanced';
