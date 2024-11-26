------------------------------------------------------------------------------------
-- Numeric functions - https://www.w3schools.com/sql/sql_ref_mysql.asp
--
-- ABS	Returns the absolute value of a number
-- ACOS	Returns the arc cosine of a number
-- ASIN	Returns the arc sine of a number
-- ATAN	Returns the arc tangent of one or two numbers
-- ATAN2	Returns the arc tangent of two numbers
-- AVG	Returns the average value of an expression
-- CEIL	Returns the smallest integer value that is >= to a number
-- CEILING	Returns the smallest integer value that is >= to a number
-- COS	Returns the cosine of a number
-- COT	Returns the cotangent of a number
-- COUNT	Returns the number of records returned by a select query
-- DEGREES	Converts a value in radians to degrees
-- DIV	Used for integer division
-- EXP	Returns e raised to the power of a specified number
-- FLOOR	Returns the largest integer value that is <= to a number
-- GREATEST	Returns the greatest value of the list of arguments
-- LEAST	Returns the smallest value of the list of arguments
-- LN	Returns the natural logarithm of a number
-- LOG	Returns the natural logarithm of a number, or the logarithm of a number to a specified base
-- LOG10	Returns the natural logarithm of a number to base 10
-- LOG2	Returns the natural logarithm of a number to base 2
-- MAX	Returns the maximum value in a set of values
-- MIN	Returns the minimum value in a set of values
-- MOD	Returns the remainder of a number divided by another number
-- PI	Returns the value of PI
-- POW	Returns the value of a number raised to the power of another number
-- POWER	Returns the value of a number raised to the power of another number
-- RADIANS	Converts a degree value into radians
-- RAND	Returns a random number
-- ROUND	Rounds a number to a specified number of decimal places
-- SIGN	Returns the sign of a number
-- SIN	Returns the sine of a number
-- SQRT	Returns the square root of a number
-- SUM	Calculates the sum of a set of values
-- TAN	Returns the tangent of a number
-- TRUNCATE	Truncates a number to the specified number of decimal places
------------------------------------------------------------------------------------
SELECT PI() AS PI;
SELECT DEGREES(PI());
SELECT POW(4, 3);
SELECT ABS(-5);
SELECT SIN(PI());
SELECT 10 DIV 3;
SELECT GREATEST(3, 12, 34, 8, 25);
SELECT LEAST(3, 12, 34, 8, 25);
SELECT GREATEST("PIKACHU", "THANOS", "ATHENA", "ALTHEA", "KRONOS", "THESEUS", "ANDROMEDA");
SELECT LEAST("PIKACHU", "THANOS", "ATHENA", "ALTHEA", "KRONOS", "THESEUS", "ANDROMEDA");
SELECT MOD(10, 4);
SELECT 10 MOD 4;
SELECT 10 % 4;
SELECT RAND();
SELECT FLOOR(RAND()*10);
