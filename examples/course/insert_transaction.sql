START TRANSACTION;

-- Vložení nového studenta
INSERT INTO student (first_name, last_name, email, enrollment_year)
VALUES ('Petr', 'Svoboda', 'petr.svoboda@student.example.com', 2025);

-- Uložení id nově vloženého studenta do proměnné
SET @new_student_id = LAST_INSERT_ID();

-- Přiřazení studenta ke kurzu s id 3
INSERT INTO student_course (student_id, course_id)
VALUES (@new_student_id, 3);

COMMIT;
