@echo off
REM Parametry - uprav podle svého
chcp 65001
set MYSQL_EXE="C:\xampp\mysql\bin\mysql.exe"
set SERVER=localhost
set USER=root
set PASSWORD=
set DATABASE=edu
set SQLFILE=.\create.sql

REM Spuštění importu
%MYSQL_EXE% --default-character-set=utf8mb4 -h %SERVER% -u %USER% -p%PASSWORD% < %SQLFILE%