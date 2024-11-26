-------------------------------------------------------------------------------------------
-- Datetime functions - https://www.w3schools.com/sql/sql_ref_mysql.asp
--
-- ADDDATE	Adds a time/date interval to a date and then returns the date
-- ADDTIME	Adds a time interval to a time/datetime and then returns the time/datetime
-- CURDATE	Returns the current date
-- CURRENT_DATE	Returns the current date
-- CURRENT_TIME	Returns the current time
-- CURRENT_TIMESTAMP	Returns the current date and time
-- CURTIME	Returns the current time
-- DATE	Extracts the date part from a datetime expression
-- DATEDIFF	Returns the number of days between two date values
-- DATE_ADD	Adds a time/date interval to a date and then returns the date
-- DATE_FORMAT	Formats a date
-- DATE_SUB	Subtracts a time/date interval from a date and then returns the date
-- DAY	Returns the day of the month for a given date
-- DAYNAME	Returns the weekday name for a given date
-- DAYOFMONTH	Returns the day of the month for a given date
-- DAYOFWEEK	Returns the weekday index for a given date
-- DAYOFYEAR	Returns the day of the year for a given date
-- EXTRACT	Extracts a part from a given date
-- FROM_DAYS	Returns a date from a numeric datevalue
-- HOUR	Returns the hour part for a given date
-- LAST_DAY	Extracts the last day of the month for a given date
-- LOCALTIME	Returns the current date and time
-- LOCALTIMESTAMP	Returns the current date and time
-- MAKEDATE	Creates and returns a date based on a year and a number of days value
-- MAKETIME	Creates and returns a time based on an hour, minute, and second value
-- MICROSECOND	Returns the microsecond part of a time/datetime
-- MINUTE	Returns the minute part of a time/datetime
-- MONTH	Returns the month part for a given date
-- MONTHNAME	Returns the name of the month for a given date
-- NOW	Returns the current date and time
-- PERIOD_ADD	Adds a specified number of months to a period
-- PERIOD_DIFF	Returns the difference between two periods
-- QUARTER	Returns the quarter of the year for a given date value
-- SECOND	Returns the seconds part of a time/datetime
-- SEC_TO_TIME	Returns a time value based on the specified seconds
-- STR_TO_DATE	Returns a date based on a string and a format
-- SUBDATE	Subtracts a time/date interval from a date and then returns the date
-- SUBTIME	Subtracts a time interval from a datetime and then returns the time/datetime
-- SYSDATE	Returns the current date and time
-- TIME	Extracts the time part from a given time/datetime
-- TIME_FORMAT	Formats a time by a specified format
-- TIME_TO_SEC	Converts a time value into seconds
-- TIMEDIFF	Returns the difference between two time/datetime expressions
-- TIMESTAMP	Returns a datetime value based on a date or datetime value
-- TO_DAYS	Returns the number of days between a date and date "0000-00-00"
-- WEEK	Returns the week number for a given date
-- WEEKDAY	Returns the weekday number for a given date
-- WEEKOFYEAR	Returns the week number for a given date
-- YEAR	Returns the year part for a given date
-- YEARWEEK	Returns the year and week number for a given date
-------------------------------------------------------------------------------------------

SELECT NOW();
SELECT CURDATE();
SELECT DAYOFWEEK(NOW());
SELECT DAYNAME('1973-09-29');
SELECT MONTHNAME('1973-09-29');
SELECT CURDATE() AS now, 
    MONTHNAME(CURDATE()) AS month,
    DAYNAME(CURDATE()) AS day;
SET @cdate = CURDATE();
SET lc_time_names = 'cs_CZ';
SELECT @cdate AS now,
    MONTHNAME(@cdate) AS month,
    DAYNAME(@cdate) AS day;
SET @cdate = NULL;
SET lc_time_names = 'cs_CZ';
SET lc_time_names = 'en_US';
SET lc_time_names = 'ko_KR';
SET lc_time_names = 'tr_TR';
SET lc_time_names = 'vi_VN';
SET lc_time_names = 'zh_CN';
SELECT DAY(NOW()) AS day;
SELECT MAKEDATE(1973, 272);
SELECT TIMESTAMP('1973-09-29');
SELECT LAST_DAY('2000-02-01');
