# Nastavení konzole na UTF-8
[Console]::OutputEncoding = [Text.UTF8Encoding]::new()

# Parametry - uprav podle svého
$mysqlExe = "C:\xampp\mysql\bin\mysql.exe"  # cesta k mysql klientu, uprav podle instalace
$server = "localhost"    # adresa DB serveru
$user = "root"           # uživatel
$password = "" # heslo
$database = "edu"        # cílová databáze
$sqlFile = ".\create.sql"  # cesta k SQL dump souboru

# Příkaz pro import
& $mysqlExe --default-character-set=utf8mb4 -h $server -u $user -p$password < $sqlFile