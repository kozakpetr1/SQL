# VNOŘOVÁNÍ DOTAZŮ

# Dotaz s vnořeným dotazem vrátí seznam všech autorů
# jazyka Prolog (lang_idlang = 28). Vnořený dotaz (vnitřní)
# je proveden jako první. Jeho výstup je použit v dotazu
# vnějším.
# Za klauzulí IN je množina hodnot identifikátorů
# autorů, např. (1, 7, 25, 36).
# Klauzule IN nahrazuje zápis pomocí OR, který by byl mnohem delší.

SELECT 
    CONCAT(UPPER(surname), " ", firstname) AS name
FROM
    plang.author
WHERE
    idauthor IN (SELECT 
            author_idauthor
        FROM
            plang.createdby
        WHERE
#            lang_idlang = 28 OR lang_idlang = 27);
            lang_idlang BETWEEN 27 AND 28);

# Dotaz s vnořeným dotazem vrátí seznam všech autorů,
# kteří nemají v databázi přiřazen žádný programovací jazyk,
# jehož jsou autory.

SELECT 
    idauthor, firstname, surname
FROM
    plang.author
WHERE
    idauthor NOT IN (SELECT author_idauthor FROM createdby);

# Dotaz vrátí statistické údaje o počtu autorů na jazyk.
# Vnitřní dotaz je uvnitř klauzule FROM, což povede
# k vytvoření dočasné tabulky items, ze které je poté
# proveden vnější dotaz.

SELECT 
    MAX(items) AS max_authors_per_lang,
    MIN(items) AS min_authors_per_lang,
    CONVERT(AVG(items),DECIMAL(10,2)) AS avg_authors_per_lang
FROM
    (SELECT 
        lang_idlang, COUNT(lang_idlang) AS items
    FROM
        plang.createdby
    GROUP BY lang_idlang) AS amount;