CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(30) NOT NULL,
    lname VARCHAR(50) NOT NULL
);

SET autocommit = 0;
START TRANSACTION;

    INSERT INTO students(fname, lname) VALUES ("Jan", "Novák");
    INSERT INTO students(fullname) VALUES("Jan z Vysočan");

COMMIT;

SET autocommit = 1;