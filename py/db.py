# https://docs.peewee-orm.com/en/latest/peewee/quickstart.html
from peewee import *

mysql_db = MySQLDatabase(
    database='plang',
    user='root',
    password='',
    host='localhost',
    port=3306
)

# Objektový model tabulky author
class Author(Model):
    idauthor = PrimaryKeyField()
    firstname = CharField()
    surname = CharField()
    company = CharField()
    
    class Meta:
        database = mysql_db
        table_name = 'author'

# Objektový model tabulky lang
class Lang(Model):
    idlang = PrimaryKeyField()
    designation = CharField()
    created = IntegerField()
    
    class Meta:
        database = mysql_db
        table_name = 'lang'
        
mysql_db.connect()

# Základní konstrukce selekce dat z DB

# Dotaz provede selekci všech záznamů z tabulky author.
for a in Author.select():
    print(a.firstname)

# Dotaz provede selekci záznamů z tabulky author
# seřazených podle atributu surname vzestupně.
for p in Author.select().order_by(Author.surname.asc()):
    print(p.surname, p.firstname)

# Dotaz provede selekci záznamů z tabulky author,
# jejichž primární klíč je mez hodnotami 5 až 10 včetně,
# seřazených podle atributu surname vzestupně.
for q in Author.select().where(Author.idauthor.between(5, 10)).order_by(Author.surname.asc()):
    print(q.surname, q.firstname)
    
# SELECT created, COUNT(created) AS lang_count FROM lang
# ORDER BY created DESC GROUP BY created;
for r in Lang.select(Lang.created, fn.COUNT(Lang.created).alias('lang_count')).order_by(Lang.created.desc()).group_by(Lang.created):
    print(r.created, r.lang_count)
    
expr = fn.Lower(fn.Substr(Lang.designation, 1, 1)) == 'c'
for l in Lang.select().where(expr):
    print(l.designation)

mysql_db.close()