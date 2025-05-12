# Evidence smluv a žádostí úřadu práce
Úřad práce eviduje smlouvy na kurzy, školení apod. uzavřené s klienty. Každý klient má možnost účastnit se neomezeného počtu aktivit a současně má možnost maximálně jednou čerpat **finanční příspevek OOPP**. Každý klient je evidován pod jménem, příjmením, datem a místem narození. Tato čtveřice údajů tvoří unikátní klíč.

**Další informace:**
- U každého klienta jsou evidovány smlouvy (začátek, konec, předčasné ukončení, návrh na zrušení - vše datumy, čeho se smlouva týká - kurz, školení, beseda atd.)
- U každého klienta je evidována žádost o finanční příspěvek OOPP (datum žádosti, datum vyřízení žádosti, schválena / neschválena).

**Úkoly:**
1. Vytvoř konceptuální návrh databáze - **E-R Diagram**.
2. Proveď normalizaci návrhu databáze.
3. Zamysli se nad způsobem řešení problém s datumy. Jak zajistíš, aby datum začátku smlouvy bylo starší než datum konce smlouvy?
4. Jak by vypadal **USE CASE diagram** zaznamenávající evidenci klienta na úřadu, zprocesování smlouvy a vyřízení žástosti o příspěvek OOPP?