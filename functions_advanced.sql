------------------------------------------------------------------------------------------------
--
--
-- BIN	Returns a binary representation of a number
-- BINARY	Converts a value to a binary string
-- CASE	Goes through conditions and return a value when the first condition is met
-- CAST	Converts a value (of any type) into a specified datatype
-- COALESCE	Returns the first non-null value in a list
-- CONNECTION_ID	Returns the unique connection ID for the current connection
-- CONV	Converts a number from one numeric base system to another
-- CONVERT	Converts a value into the specified datatype or character set
-- CURRENT_USER	Returns the user name and host name for the MySQL account that the server used to authenticate the current client
-- DATABASE	Returns the name of the current database
-- IF	Returns a value if a condition is TRUE, or another value if a condition is FALSE
-- IFNULL	Return a specified value if the expression is NULL, otherwise return the expression
-- ISNULL	Returns 1 or 0 depending on whether an expression is NULL
-- LAST_INSERT_ID	Returns the AUTO_INCREMENT id of the last row that has been inserted or updated in a table
-- NULLIF	Compares two expressions and returns NULL if they are equal. Otherwise, the first expression is returned
-- SESSION_USER	Returns the current MySQL user name and host name
-- SYSTEM_USER	Returns the current MySQL user name and host name
-- USER	Returns the current MySQL user name and host name
-- VERSION	Returns the current version of the MySQL database
------------------------------------------------------------------------------------------------

SELECT BIN(25);
SELECT BINARY(25);
SELECT CAST("2017-08-29" AS DATE);
SELECT COALESCE(NULL, NULL, NULL, 'PIKACHU', NULL, 'BARBIE');
SELECT CONNECTION_ID();
SELECT DATABASE();
SELECT SESSION_USER();
SELECT SYSTEM_USER();
SELECT USER();
SELECT VERSION();
