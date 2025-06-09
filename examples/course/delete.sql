-- 1.a) Jednoduchý DELETE: smazání studenta podle id
DELETE FROM student
WHERE id = 30;

-- 1.b) DELETE s WHERE: smazání kurzů, které mají úroveň 'Beginner' a mají v názvu 'PHP'
DELETE FROM course
WHERE level = 'Beginner' AND name LIKE '%PHP%';

-- 1.c) DELETE s podmínkou vztahující se na cizí klíče - odstranění všech záznamů o zápisu studenta s id 10 z tabulky student_course
DELETE FROM student_course
WHERE student_id = 10;

-- 1.d) Pokus o smazání lektora, který je stále přiřazen ke kurzům - měl by selhat díky ON DELETE RESTRICT
DELETE FROM lecturer
WHERE id = 1;
