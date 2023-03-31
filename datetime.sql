SELECT NOW();
SELECT CURDATE();
SELECT DAYOFWEEK(NOW());
SELECT DAYNAME('1973-09-29');
SELECT MONTHNAME('1973-09-29');
SELECT CURDATE() AS now, 
    MONTHNAME(CURDATE()) AS month,
    DAYNAME(CURDATE()) AS day;
SET @cdate = CURDATE();
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
SELECT LAST_DAY('1973-09-29');
# SELECT SEC_TO_TIME(NOW() - '1973-09-29');