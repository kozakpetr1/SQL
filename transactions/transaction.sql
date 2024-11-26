# Vlastnosti transakce
# ===============================================================================
#
# Atomicita: Výsledek transakce může být buď zcela úspěšný, nebo zcela neúspěšný.
# Celá transakce musí být vrácena zpět, pokud jedna její část selže.
#
# Konzistence: Transakce zachovávají omezení integrity přesouváním databáze z
# jednoho platného stavu do jiného.
#
# Izolace: Souběžné transakce jsou od sebe izolovány, což zajišťuje přesnost dat.

# Trvanlivost: Jakmile je transakce potvrzena, její úpravy zůstávají v platnosti
# i v případě selhání systému.

SET autocommit = 0;

START TRANSACTION;
    UPDATE `plang`.`author`
    SET company = 'Bell Labs'
    WHERE surname = 'Kernighan' AND firstname = 'Brian';
    UPDATE `plang`.`author`
    SET company = 'Bell Labs'
    WHERE surname = 'Ritchie' AND firstname = 'Dennis';
COMMIT;
# ROLLBACK;
SET autocommit = 1;