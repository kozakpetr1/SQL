-- 1.a) Vyber všechny lektory (jednoduchý dotaz)
SELECT * FROM lecturer;

-- 1.b) Vyber jména a emaily všech studentů (projekce)
SELECT first_name, last_name, email FROM student;

-- 1.c) Vyber všechny kurzy úrovně 'Beginner' (WHERE)
SELECT * FROM course WHERE level = 'Beginner';

-- 1.d) Vyber kurzy, jejichž název obsahuje slovo "programování" (LIKE, %)
SELECT * FROM course WHERE name LIKE '%programování%';

-- 1.e) Vyber kurzy, jejichž název začíná na 'Programování v J_' (LIKE, _ jako zástupný znak jednoho znaku)
SELECT * FROM course WHERE name LIKE 'Programování v J_';

-- 2.a) Počet studentů zapsaných na každý kurz (GROUP BY + JOIN)
SELECT
  c.name AS course_name,
  COUNT(sc.student_id) AS students_count
FROM
  course c
LEFT JOIN
  student_course sc ON c.id = sc.course_id
GROUP BY
  c.id, c.name;

-- 2.b) Seřazení kurzů podle počtu studentů sestupně (ORDER BY)
SELECT
  c.name AS course_name,
  COUNT(sc.student_id) AS students_count
FROM
  course c
LEFT JOIN
  student_course sc ON c.id = sc.course_id
GROUP BY
  c.id, c.name
ORDER BY
  students_count DESC;
