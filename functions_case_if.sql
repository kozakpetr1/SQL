/*
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

IF(condition, value_if_true, value_if_false)
IFNULL(expression, alternative_value)
*/

UPDATE plang.author
SET company = 'IBM'
WHERE firstname = 'John' AND surname = 'Backus';

SELECT *,
    CASE 
        WHEN created > 1968 THEN 'This language was created after 1968.'
        WHEN created < 1968 THEN 'This language was created before 1968.'
        ELSE 'This language was created in 1968.'
    END AS creationDate
FROM plang.lang;

SELECT * FROM plang.author
ORDER BY
    (CASE
        WHEN company IS NULL THEN surname
        ELSE company
    END) ASC;

SELECT
    designation,
    IF(created > 1968, 'This language was created after 1968.', 'This language was not created after 1968.') AS creationDate
FROM plang.lang;

SELECT
    firstname, surname, IFNULL(company, 'NOT ASSIGNED') AS companyAssigned
FROM plang.author;

SELECT
    firstname, surname, IF(ISNULL(company), 'NOT ASSIGNED', company) AS companyAssigned
FROM plang.author;