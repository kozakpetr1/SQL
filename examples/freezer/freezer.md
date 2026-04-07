# Evidence položek v mrazáku

## Cíl úlohy

Cílem je navrhnout, vytvořit a naplnit **relační databázi** sloužící k evidenci potravin uložených v mrazáku a procvičit práci s **SQL dotazy (CRUD i pokročilé dotazy)**.

Procvičíš si:

* návrh databázového modelu (E-R diagram),
* převod modelu do relační databáze,
* generování SQL skriptu,
* vkládání dat,
* práci s dotazy (SELECT, INSERT, UPDATE, DELETE),
* agregační funkce a spojování tabulek.

---

## 1. Analýza a návrh databáze

Navrhni **relační databázi pro evidenci položek v mrazáku**.

### Požadavky na databázi

Každá evidovaná položka musí mít minimálně:

* **název položky**
* **kategorii** (např. maso, zelenina, hotová jídla, pečivo…)
* **datum expirace**
* **počet kusů**

### Povinná omezení

* datum expirace musí splňovat podmínku:
  `datum_expirace >= CURRENT_DATE`
* počet kusů musí být **kladné celé číslo**

---

## 2. E-R diagram

1. Navrhni **E-R diagram** databáze:

   * identifikuj entity,
   * urči jejich atributy,
   * definuj vazby mezi entitami.
2. Diagram vytvoř v **MySQL Workbench** (EER Diagram).

Minimálně očekávané entity:

* položka
* kategorie

---

## 3. Implementace databáze

1. Pomocí **MySQL Workbench – Forward Engineering**:

   * vygeneruj **SQL CREATE SCRIPT**,
   * vytvoř databázi a tabulky.
2. Použij:

   * primární klíče,
   * cizí klíče,
   * vhodné datové typy,
   * omezení (`NOT NULL`, `CHECK`, případně `UNIQUE`).

---

## 4. Naplnění databáze daty

* K dispozici je tabulka s daty:

| ID | Název položky        | Kategorie        | Datum expirace | Počet kusů |
|----|----------------------|------------------|---------------|------------|
| 1  | Kuřecí prsa          | Maso             | 2026-03-15    | 4          |
| 2  | Hovězí guláš         | Hotová jídla     | 2026-01-20    | 2          |
| 3  | Losos filet          | Ryby             | 2026-02-10    | 3          |
| 4  | Mražený špenát       | Zelenina         | 2026-06-01    | 5          |
| 5  | Hranolky             | Přílohy          | 2026-05-12    | 2          |
| 6  | Jahody               | Ovoce            | 2026-04-30    | 3          |
| 7  | Borůvky              | Ovoce            | 2026-04-18    | 2          |
| 8  | Pizza Margherita     | Hotová jídla     | 2026-02-28    | 1          |
| 9  | Vepřová panenka      | Maso             | 2026-03-05    | 2          |
| 10 | Zeleninová směs      | Zelenina         | 2026-07-10    | 4          |
| 11 | Knedlíky             | Přílohy          | 2026-08-01    | 2          |
| 12 | Vanilková zmrzlina   | Dezerty          | 2026-09-15    | 1          |
| 13 | Rybí prsty           | Ryby             | 2026-01-30    | 3          |
| 14 | Maliny               | Ovoce            | 2026-04-25    | 2          |
| 15 | Kuřecí vývar         | Polotovary       | 2026-02-05    | 4          |


* Na základě této tabulky:

  * vytvoř **SQL INSERT skript**,
  * který naplní všechny tabulky databáze.

Skript musí být:

* spustitelný bez chyb (v případě potřeby uprav),
* konzistentní s návrhem databáze.

---

## 5. Základní CRUD dotazy

Dotazy prováděj např. pomocí:

* phpMyAdmin,
* MySQL Workbench,
* rozšíření ve VS Code.

### Požadavky na CRUD dotazy (min. 5)

1. **SELECT** – zobraz všechny položky v mrazáku včetně názvu kategorie.
2. **INSERT** – přidej novou položku do mrazáku.
3. **UPDATE** – změň počet kusů vybrané položky.
4. **UPDATE** – změň datum expirace konkrétní položky.
5. **DELETE** – odstraň položku z databáze podle jejího ID.

---

## 6. Pokročilé SQL dotazy

V dalším kroku navrhni a realizuj **náročnější dotazy**, které využívají:

* agregační funkce (`COUNT`, `SUM`, `MIN`, `MAX`)
* `JOIN`
* `GROUP BY`
* `UNION`

### Požadavky na pokročilé dotazy (min. 5)

1. **JOIN + WHERE**
   Vypiš všechny položky, kterým vyprší expirace do 30 dnů.

2. **Agregace**
   Zjisti celkový počet kusů položek v mrazáku.

3. **GROUP BY + COUNT**
   Zobraz počet položek v jednotlivých kategoriích.

4. **MIN / MAX**
   Najdi položku s nejbližším a nejvzdálenějším datem expirace.

5. **UNION**
   Vypiš:

   * položky s expirací do 14 dnů
     **nebo**
   * položky s počtem kusů menším než 2.

---

## 7. Výstupy k odevzdání

Žák odevzdá:

1. **E-R diagram** (soubor z MySQL Workbench / export PNG nebo PDF)
2. **SQL CREATE SCRIPT** (forward engineering)
3. **SQL INSERT SCRIPT** (naplnění databáze daty)
4. **SQL soubor s dotazy**

   * CRUD dotazy
   * pokročilé dotazy

---

## 8. Hodnocení

* návrh databáze a E-R diagram – 30 %
* správnost databázové struktury – 20 %
* naplnění daty – 10 %
* CRUD dotazy – 20 %
* pokročilé dotazy – 20 %

