SET autocommit = 0;

START TRANSACTION;

    SAVEPOINT ins1;
        INSERT INTO plang.lang (idlang, designation, created) VALUES (NULL, 'Julia', 2012);

    SAVEPOINT ins2;
        INSERT INTO plang.lang (idlang, designation, created) VALUES (NULL, 'Blbost1', 2014);

    SAVEPOINT ins3;
        INSERT INTO plang.lang (idlang, designation, created) VALUES (NULL, 'Blbost2', 2014);

ROLLBACK TO ins2;
COMMIT;

SET autocommit = 1;