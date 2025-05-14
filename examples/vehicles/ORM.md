# Zadání: Použití ORM v PHP pro připojení k databázi

## Cíl úlohy:

Cílem této úlohy je seznámit se s konceptem Object-Relational Mapping (ORM) v PHP, vybrat si jednu z dostupných knihoven ORM a implementovat základní operace s databází MySQL nebo MariaDB.

https://github.com/kozakpetr1/SQL/tree/main/examples/vehicles

   * create.sql - SQL Create Script databáze `vehicles`
   * ORM.md - zadání úkolu

---

## Zadání:

1. **Výběr ORM:** Vyberte si jednu z následujících ORM knihoven pro PHP:

   * Doctrine ORM
   * Eloquent (Laravel)
   * Propel ORM
   * jiný

2. **Připojení k databázi:** Vytvořte skript, který se připojí k databázi `vehicles` (MySQL nebo MariaDB) pomocí zvoleného ORM.

3. **Práce s tabulkami:** Databáze `vehicles` obsahuje následující tabulky:

   * `manufacturers`: Informace o výrobci vozidla (id, manufacturer\_name)
   * `models`: Informace o modelu vozidla (id, model\_name, id\_manufacturer)
   * `owners`: Informace o majitelích vozidel (id, first\_name, last\_name, email)
   * `cars`: Informace o vozidlech (id, vin\_code, engine\_model, manufactured\_in, id\_model, id\_owner)

4. **Implementace SQL dotazů:**

   * **Select - Výpis všech modelů vozidel:** Načtěte a vypište všechny záznamy z tabulky `models` včetně názvu výrobce (`manufacturer_name`) z tabulky `manufacturers`.
   * **Select - Filtrování:** Vyberte modely podle:

     * Výrobce (`manufacturer_name`)
     * Modelu (`model_name`)
   * **Select - Spojení tabulek:** Zobrazte seznam všech modelů vozidel spolu s informacemi o majiteli, pokud existuje vazba.

5. **Výpis dat v tabulce:** Na webové stránce zobrazte přehledně vypsaná data v tabulce.

---

## Kritéria hodnocení:

* Funkčnost aplikace (připojení k DB, správné SQL dotazy)
* Použití správné syntaxe a principů ORM
* Kvalita kódu (čitelnost, struktura, komentáře)

---

## Odevzdání:

* Zdrojový kód aplikace (GitHub)
* Krátký MD dokument s popisem řešení a použitých technologií


