CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(30) NOT NULL,
    lname VARCHAR(50) NOT NULL
);
DELIMITER $$

CREATE PROCEDURE insert_student (
    IN p_fname VARCHAR(30),
    IN p_lname VARCHAR(50)
)
BEGIN
    INSERT INTO students (fname, lname)
    VALUES (p_fname, p_lname);
END $$

DELIMITER ;

CALL insert_student('Jan', 'Novák');
CALL insert_student('Pavel', 'Novotný');