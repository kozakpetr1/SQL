CREATE TABLE vehicles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50),
    model VARCHAR(30),
    color VARCHAR(20),
    manufacturer VARCHAR(20),
    production_year SMALLINT
)

SET autocommit = 0;

START TRANSACTION;
    INSERT ...
    INSERT ...
    UPDATE ...

COMMIT;

SET autocommit = 1;
