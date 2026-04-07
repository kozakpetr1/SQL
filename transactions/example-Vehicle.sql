CREATE TABLE vehicles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(50) NOT NULL,
    speed INT NOT NULL,
    horse_power INT NOT NULL);

DELIMITER //

CREATE PROCEDURE insert_vehicle(
    IN p_model VARCHAR(30),
    IN p_speed INT,
    IN p_horse_power INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET autocommit = 1;
        SELECT 'Nastala chyba – všechny změny byly vráceny zpět.' AS zprava;
    END;

    SET autocommit = 0;
    START TRANSACTION;

        INSERT INTO vehicles (model, speed, horse_power)
        VALUES (p_model, p_speed, p_horse_power);

    COMMIT;
    SET autocommit = 1;
    SELECT 'Transakce úspěšně dokončena.' AS zprava;
END//

DELIMITER ;

-- dotaz proběhne úspěšně
CALL insert_vehicle("BMW X6", 250, 200);
-- v dotazu je chyba (NULL), nastane SQL Exception
CALL insert_vehicle("Velorex", NULL, 16);

