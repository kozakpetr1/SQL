SELECT CONCAT(`author`.`firstname`,' ', `author`.`surname`) AS name FROM `plang`.`author`;

SELECT CONCAT(`author`.`firstname`,' ', `author`.`surname`) AS name,
    LENGTH(CONCAT(`author`.`firstname`,' ', `author`.`surname`)) AS length
FROM `plang`.`author`;

SELECT LOWER(`author`.`firstname`) AS lowername 
FROM `plang`.`author`;

SELECT UPPER(`author`.`firstname`) AS lowername 
FROM `plang`.`author`;

SELECT TRIM(`author`.`firstname`) AS trimname 
FROM `plang`.`author`;

SELECT SUBSTRING(`author`.`firstname`, 1, 3) AS extractstr
FROM `plang`.`author`;