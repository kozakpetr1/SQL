-- Vytvoření databáze
CREATE DATABASE IF NOT EXISTS edu CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci;
USE edu;

-- Tabulka lecturer
CREATE TABLE lecturer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabulka course
CREATE TABLE course (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    level ENUM('Beginner', 'Intermediate', 'Advanced') NOT NULL,
    lecturer_id INT NOT NULL,
    FOREIGN KEY (lecturer_id) REFERENCES lecturer(id) ON DELETE RESTRICT
);

-- Tabulka student
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    enrollment_year YEAR NOT NULL
);

-- Pomocná tabulka pro many-to-many vztah studentů a kurzů
CREATE TABLE student_course (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY(student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE RESTRICT,
    FOREIGN KEY (course_id) REFERENCES course(id) ON DELETE RESTRICT
);

-- Naplnění tabulek fiktivními daty

-- Lektoři
INSERT INTO lecturer (first_name, last_name, email) VALUES
('Jan', 'Novák', 'jan.novak@example.com'),
('Petra', 'Svobodová', 'petra.svobodova@example.com'),
('Marek', 'Dvořák', 'marek.dvorak@example.com'),
('Lucie', 'Králová', 'lucie.kralova@example.com'),
('Tomáš', 'Horák', 'tomas.horak@example.com'),
('Eva', 'Malá', 'eva.mala@example.com'),
('Pavel', 'Černý', 'pavel.cerny@example.com'),
('Jana', 'Bílá', 'jana.bila@example.com'),
('Karel', 'Novotný', 'karel.novotny@example.com'),
('Lenka', 'Hrušková', 'lenka.hruskova@example.com');

-- Kurzy
INSERT INTO course (name, description, level, lecturer_id) VALUES
('Programování v Pythonu - začátečníci', 'Základy programování v jazyce Python.', 'Beginner', 1),
('Programování v Javě - mírně pokročilí', 'Objektivní orientace na objektově orientované programování v Javě.', 'Intermediate', 2),
('Algoritmizace a datové struktury', 'Základy algoritmizace a práce s datovými strukturami.', 'Intermediate', 3),
('Webový vývoj HTML/CSS', 'Úvod do tvorby webových stránek.', 'Beginner', 4),
('Programování v C++ - pokročilí', 'Pokročilé techniky v C++.', 'Advanced', 5),
('Databáze a SQL', 'Základy práce s relačními databázemi.', 'Beginner', 6),
('Programování v JavaScriptu', 'Dynamické webové aplikace s JavaScriptem.', 'Intermediate', 7),
('Mobilní aplikace v Kotlinu', 'Vývoj aplikací pro Android v Kotlinu.', 'Advanced', 8),
('Umělá inteligence a strojové učení', 'Úvod do AI a základů strojového učení.', 'Advanced', 9),
('Programování v PHP', 'Serverové skriptování v PHP.', 'Beginner', 10);

-- Studenti
INSERT INTO student (first_name, last_name, email, enrollment_year) VALUES
('Adam', 'Černý', 'adam.cerny@student.example.com', 2023),
('Barbora', 'Novotná', 'barbora.novotna@student.example.com', 2023),
('Cyril', 'Holub', 'cyril.holub@student.example.com', 2023),
('Denisa', 'Králová', 'denisa.kralova@student.example.com', 2023),
('Eva', 'Šimečková', 'eva.simeckova@student.example.com', 2023),
('Filip', 'Marek', 'filip.marek@student.example.com', 2023),
('Gabriela', 'Urbanová', 'gabriela.urbanova@student.example.com', 2023),
('Honza', 'Malý', 'honza.maly@student.example.com', 2023),
('Ivana', 'Procházková', 'ivana.prochazkova@student.example.com', 2023),
('Jakub', 'Tichý', 'jakub.tichy@student.example.com', 2023),
('Klára', 'Dvořáková', 'klara.dvorakova@student.example.com', 2023),
('Lukáš', 'Němec', 'lukas.nemec@student.example.com', 2023),
('Monika', 'Svobodová', 'monika.svobodova@student.example.com', 2023),
('Nikola', 'Poláková', 'nikola.polakova@student.example.com', 2023),
('Ondřej', 'Mareš', 'ondrej.mares@student.example.com', 2023),
('Pavel', 'Urban', 'pavel.urban@student.example.com', 2023),
('Renata', 'Čechová', 'renata.cechova@student.example.com', 2023),
('Šárka', 'Veselá', 'sarka.vesela@student.example.com', 2023),
('Tomáš', 'Kovář', 'tomas.kovar@student.example.com', 2023),
('Veronika', 'Blažková', 'veronika.blazkova@student.example.com', 2023),
('Vít', 'Hrubý', 'vit.hruby@student.example.com', 2023),
('Zdeněk', 'Nový', 'zdenek.novy@student.example.com', 2023),
('Alena', 'Kučerová', 'alena.kucerova@student.example.com', 2023),
('Bohumil', 'Konečný', 'bohumil.konecny@student.example.com', 2023),
('Dagmar', 'Šimková', 'dagmar.simkova@student.example.com', 2023),
('Erik', 'Černý', 'erik.cerny@student.example.com', 2023),
('Filip', 'Svoboda', 'filip.svoboda@student.example.com', 2023),
('Gabriela', 'Čechová', 'gabriela.cechova@student.example.com', 2023),
('Helena', 'Dvořáková', 'helena.dvorakova@student.example.com', 2023),
('Igor', 'Král', 'igor.kral@student.example.com', 2023);

-- Přiřazení studentů ke kurzům (několik příkladů)
INSERT INTO student_course (student_id, course_id) VALUES
(1, 1), (1, 6), (2, 1), (2, 4), (3, 3), (3, 7), (4, 2), (4, 9), (5, 6), (5, 10),
(6, 3), (6, 8), (7, 4), (7, 7), (8, 1), (8, 2), (9, 5), (9, 9), (10, 6), (10, 10),
(11, 2), (11, 3), (12, 1), (12, 4), (13, 7), (13, 8), (14, 9), (14, 5), (15, 6), (15, 10),
(16, 1), (16, 3), (17, 2), (17, 4), (18, 5), (18, 7), (19, 6), (19, 8), (20, 9), (20, 10),
(21, 1), (21, 3), (22, 2), (22, 5), (23, 4), (23, 6), (24, 7), (24, 9), (25, 8), (25, 10),
(26, 1), (26, 2), (27, 3), (27, 4), (28, 5), (28, 6), (29, 7), (29, 8), (30, 9), (30, 10);
