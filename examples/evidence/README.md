# Návrh webové aplikace pro evidenci souvislé praxe žáků

## Zadání úkolu

Vaším úkolem je navrhnout **jednoduchou webovou aplikaci**, která umožní školní správě a externím mentorům **digitálně spravovat souvislou odbornou praxi žáků**. Cílem tohoto návrhu není implementace hotového systému, ale **přemýšlení o návrhu architektury, použitých technologiích a způsobu uložení dat**.

Celý návrh zpracujte jako **Markdown dokument** (soubor `navrh.md`), který bude obsahovat strukturovaný popis níže uvedených bodů.

---

## Funkční požadavky

### Admin (školní kariérní poradce) musí být schopen:

1. **Importovat CSV se seznamem žáků**, kteří budou konat odbornou praxi. Každý záznam obsahuje:

   * jméno, příjmení
   * datum narození
   * místo narození
   * státní příslušnost
   * třída (např. 2GA)
   * studijní obor

2. **Importovat CSV s údaji o mentorech**, např. zástupcích firem, kde probíhá praxe. Každý záznam může obsahovat:

   * název firmy
   * adresa (ulice, město, PSČ, stát)
   * IČ, DIČ (volitelné)
   * kontaktní osoba: jméno, příjmení, telefon, e-mail

3. **Vygenerovat přístupové údaje** (uživatelské jméno + heslo) ke každému žákovi, které dostane mentor, aby mohl zapisovat průběh praxe tohoto konkrétního žáka.

4. **Přiřadit mentory ke konkrétním žákům.**

5. **Vygenerovat přehled (např. ve formátu PDF)** s údaji o praxi každého žáka, včetně docházky, náplně práce a hodnocení.

---

### Mentor (externí osoba z firmy) musí mít možnost:

6. **Přihlásit se vygenerovanými údaji** a získat přístup pouze k datům **jednoho konkrétního žáka**.

7. **Zapsat průběžné denní záznamy** o praxi žáka pro 10 navazujících pracovních dní:

   * datum
   * náplň práce
   * přítomnost (ano/ne)

8. **Zapsat závěrečné slovní hodnocení** a **výslednou známku** (1–5 nebo N = nehodnocen).

---

## Co od vás očekávám

Ve svém návrhu (soubor `navrh.md`) zpracujte:

### 1. Obecný návrh řešení

* Jak by měla aplikace fungovat z pohledu uživatele?
* Jaké role budou mít uživatelé a co uvidí?

### 2. Návrh technologií

* Jaký **programovací jazyk** zvolíte (např. PHP, Python, JavaScript, ...)?
* Jaký **framework/platformu** použijete (např. Laravel, Flask, Express.js, ...)?
* Bude aplikace webová, desktopová nebo jiná?
* Jaká bude databáze a proč? (relační – MySQL/MariaDB/PostgreSQL vs. dokumentová – MongoDB aj.)
* Jaký formát dat uvažujete pro import/export (CSV, JSON, XML...)?

### 3. Návrh databázového modelu

* Popište hlavní tabulky/datové entity (např. student, mentor, uživatel, den praxe...)
* Uveďte příklady relací mezi tabulkami (1\:N, 1:1, M\:N)

### 4. Bezpečnostní opatření

* Jak byste zajistili bezpečné uložení hesel?
* Jak omezit přístup jednotlivých rolí jen k relevantním údajům?

### 5. Generování dokumentů

* Jak byste technicky zajistili export záznamů do PDF?

### 6. Uživatelské rozhraní

* Návrh rozhraní (můžete dodat jednoduchý náčrt nebo textový popis)
* Co uvidí mentor a co admin?

---

## Výstup

Odevzdejte soubor ve formátu `navrh.md`, který bude obsahovat:

* stručné, ale promyšlené odpovědi k jednotlivým bodům
* případně i schéma databáze (např. ve formě ASCII nebo jako odkaz na obrázek)
* volitelné: odkazy na technologie, které byste použili

---

