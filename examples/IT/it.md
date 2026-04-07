
# Zadání: Návrh databáze – Vědci a objevy v IT a AI

## Cíl úlohy

Navrhněte a implementujte relační databázi, která eviduje významné vědce (resp. IT specialisty) a jejich objevy v oblasti informatiky a umělé inteligence.

Součástí řešení bude:

* návrh **EER diagramu**
* návrh databázového schématu
* naplnění databáze **reálnými daty**
* ověření pomocí základních SQL dotazů

---

## Požadavky na databázi

### 1. Entita: Vědec (Scientist)

Minimální atributy:

* `first_name` – jméno
* `last_name` – příjmení
* `birth_year` – rok narození
* `death_year` – rok úmrtí (NULL pokud žije)
* `birth_place` – místo narození
* `field` – obor / zaměření (např. AI, kryptografie, teorie výpočtu…)
* `alma_mater` – univerzita / vzdělání

---

### 2. Entita: Objev (Discovery)

Minimální atributy:

* `name` – název objevu
* `year` – rok objevu
* `place` – místo (instituce / stát)
* `description` – stručný slovní popis

---

### 3. Vztahy

* Jeden vědec může mít **více objevů**
* Jeden objev může mít **více autorů**

Typ vztahu: **M:N (many-to-many)**
Nutné vytvořit **spojovací tabulku**

---

## Požadavky na návrh (normalizace)

Databáze musí splňovat:

### 1. normální forma (1NF)

* žádné opakující se skupiny
* atomické hodnoty (žádné seznamy v jednom sloupci)

### 2. normální forma (2NF)

* žádné částečné závislosti na části složeného klíče
* vhodné rozdělení entit (např. univerzity, obory)

Doporučení:

* vytvořit samostatné tabulky pro:

  * `field` (obory)
  * `institution` (univerzity / instituce)

---

## Minimální struktura tabulek (návrh)

* `scientist`
* `discovery`
* `scientist_discovery` (vazební tabulka)
* `field`
* `institution`

---

## Naplnění databáze (reálná data)

Databáze musí obsahovat minimálně:

* **5 vědců**
* **5 objevů**
* odpovídající vazby mezi nimi

---

## Ukázka dat (NE SQL, pouze tabulky)

### Scientist

| id | first_name | last_name   | birth_year | death_year | birth_place   | field_id | institution_id |
| -- | ---------- | ----------- | ---------- | ---------- | ------------- | -------- | -------------- |
| 1  | Alan       | Turing      | 1912       | 1954       | London, UK    | 1        | 1              |
| 2  | John       | McCarthy    | 1927       | 2011       | Boston, USA   | 2        | 2              |
| 3  | Tim        | Berners-Lee | 1955       | NULL       | London, UK    | 3        | 3              |
| 4  | Geoffrey   | Hinton      | 1947       | NULL       | London, UK    | 2        | 4              |
| 5  | Claude     | Shannon     | 1916       | 2001       | Michigan, USA | 4        | 5              |

---

### Discovery

| id | name                         | year | place             | description                                 |
| -- | ---------------------------- | ---- | ----------------- | ------------------------------------------- |
| 1  | Turing Machine               | 1936 | UK                | Model výpočtu a základ teorie algoritmů     |
| 2  | Artificial Intelligence term | 1956 | Dartmouth College | Zavedení pojmu umělá inteligence            |
| 3  | World Wide Web               | 1989 | CERN              | Systém propojených hypertextových dokumentů |
| 4  | Backpropagation              | 1986 | USA               | Algoritmus pro trénování neuronových sítí   |
| 5  | Information Theory           | 1948 | Bell Labs         | Základy přenosu informace                   |

---

### Scientist_Discovery

| scientist_id | discovery_id |
| ------------ | ------------ |
| 1            | 1            |
| 2            | 2            |
| 3            | 3            |
| 4            | 4            |
| 5            | 5            |

---

### Field

| id | name                    |
| -- | ----------------------- |
| 1  | Theory of Computation   |
| 2  | Artificial Intelligence |
| 3  | Web Technologies        |
| 4  | Information Theory      |

---

### Institution

| id | name                    | country     |
| -- | ----------------------- | ----------- |
| 1  | University of Cambridge | UK          |
| 2  | Stanford University     | USA         |
| 3  | CERN                    | Switzerland |
| 4  | University of Toronto   | Canada      |
| 5  | Bell Labs               | USA         |

---

## Požadované SQL výstupy

Vytvořte dotazy:

1. Výpis všech vědců a jejich oborů
2. Výpis objevů v oblasti AI
3. Výpis vědců a jejich objevů
4. Počet objevů na vědce
5. Vědci, kteří stále žijí

---

## Odevzdání

Odevzdejte:

* EER diagram (např. PNG / PDF)
* SQL skript pro vytvoření databáze (`CREATE TABLE`)
* SQL dotazy (SELECT)

---

