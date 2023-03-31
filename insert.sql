SET autocommit = 1;

INSERT INTO plang.lang (idlang, designation, created)
VALUES (NULL, 'Crystal', 2014);

SET @crystal =  LAST_INSERT_ID();

INSERT INTO plang.author
    (idauthor, firstname, surname, company)
VALUES
    (NULL, 'Ary', 'Borenszweig', NULL);

SET @ary = LAST_INSERT_ID();

INSERT INTO plang.author
    (idauthor, firstname, surname, company)
VALUES
    (NULL, 'Chuan', 'Wajnerman', NULL);

SET @chuan = LAST_INSERT_ID();

INSERT INTO plang.author
    (idauthor, firstname, surname, company)
VALUES
    (NULL, 'Brian', 'Cardiff', NULL);

SET @brian = LAST_INSERT_ID();

INSERT INTO plang.createdby
    (idcreatedby,  lang_idlang, author_idauthor)
VALUES
    (NULL, @crystal, @ary),
    (NULL, @crystal, @chuan),
    (NULL, @crystal, @brian);

SELECT 
    lang.designation AS programming_language,
    CONCAT(UPPER(surname), " ", firstname) AS author,
    lang.created
FROM 
    plang.lang, plang.author
INNER JOIN 
    plang.createdby
WHERE
    lang.idlang = createdby.lang_idlang
    AND lang.idlang = @crystal
    AND author.idauthor = createdby.author_idauthor;

