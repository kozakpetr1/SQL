CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL
);

DELIMITER //

CREATE PROCEDURE add_student()
BEGIN
    -- Handler – co se má stát, když nastane chyba (SQLEXCEPTION)
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET autocommit = 1;
        SELECT 'Nastala chyba – všechny změny byly vráceny zpět.' AS zprava;
    END;

    SET autocommit = 0;
    -- Zahájení transakce
    START TRANSACTION;

    -- První příkaz – OK
    INSERT INTO students (fname, lname)
    VALUES ('Jan', 'Novák');

    -- Druhý příkaz – CHYBA (sloupec neexistuje)
    INSERT INTO students (name)
    VALUES ('Jan z Vysočan');

    -- Pokud by vše proběhlo v pořádku, uloží se změny
    COMMIT;
    SET autocommit = 1;
    SELECT 'Transakce úspěšně dokončena.' AS zprava;
END//

DELIMITER ;

CALL add_student();

-- Spustí se transakce. Vloží se Jan Novák.
-- Následuje chyba (neexistující sloupec).
-- Aktivuje se handler, který provede: ROLLBACK
-- vypíše zprávu „Nastala chyba – všechny změny byly vráceny zpět.“
-- Výsledek: v tabulce není žádný záznam.