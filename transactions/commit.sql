SET autocommit = 0;

UPDATE plang.author
    SET company = 'Bell Laboratories'
    WHERE surname = 'Kernighan' AND firstname = 'Brian';
COMMIT;

UPDATE plang.author
    SET company = 'Microsoft'
    WHERE surname = 'Kernighan' AND firstname = 'Brian';
ROLLBACK;

SET autocommit = 1;