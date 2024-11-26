SET autocommit = 0;

START TRANSACTION;

    INSERT INTO plang.lang (idlang, designation, created)
    VALUES (NULL, 'Julia', 2012);

    SAVEPOINT xxx;
    INSERT INTO plang.lang (idlang, designation, created)
    VALUES (NULL, 'Pony', 2012);
    INSERT INTO plang.lang (idlang, designation, created)
    VALUES (NULL, 'Zig', 2012);

ROLLBACK TO xxx;
COMMIT;