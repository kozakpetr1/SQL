# String functions - https://www.w3schools.com/sql/sql_ref_mysql.asp

SELECT ASCII("T") AS AsciiCodeT;
SELECT CHAR_LENGTH("ŽUŽU") AS CharLengthInStrings;
SELECT LENGTH("ŽUŽU") AS CharLengthInBytes;
SELECT CONCAT(surname, " ", firstname) AS Author FROM plang.author;
SELECT CONCAT(UPPER(surname), " ", firstname) AS Author FROM plang.author;
SELECT CONCAT_WS("_", surname, firstname) AS Author FROM plang.author;
SELECT LPAD(surname, 20, "_\\|/_") FROM plang.author;
SELECT REPEAT(CONCAT(surname, " "), 3) FROM plang.author;
SELECT REPLACE(surname, "a", "*") FROM plang.author;
SELECT REVERSE(surname) FROM plang.author;
