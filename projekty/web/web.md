# Návrh relační databáze pro evidenci článků

## Zadání
Navrhněte konceptuální model relační databáze pro evidenci článků na webových stránkách. Pro návrh využijte E-R diagram.

### Požadavky na databázi:
1. **Články**
   - Každý článek má:
     - Nadpis
     - Perex (krátké shrnutí)
     - Obsah
   - Články mohou být vzájemně provázány (jeden článek může odkazovat na jiný).

2. **Kategorie článků**
   - Články mohou být kategorizovány např. jako:
     - Obecný článek
     - Aktualita
     - Aktivita
   - Jeden článek může spadat do více kategorií.

3. **Moduly článku**
   - Každý článek může mít (ale nemusí):
     - Připojenou galerii fotografií
     - Připojené soubory ke stažení

## Úkoly:
1. Identifikujte hlavní entity a jejich atributy.
2. Navrhněte vztahy mezi entitami.
3. Vytvořte E-R diagram reprezentující navrženou databázi.
4. Připravte textovou (markdown) dokumentaci s popisem entit a vztahů.

---

💡 **Tip:** Použijte nástroje jako Draw.io, Lucidchart nebo **MySQL Workbench** pro vytvoření diagramu.

**Odevzdejte diagram v PNG formátu a markdown dokumentaci.**
