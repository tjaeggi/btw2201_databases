# Einführungsbeispiel mit PeeWee ORM-Framework

## PeeWee als ORM-Framework mit pip installieren


``` py
pip install peewee
```


## Einfaches Beispiel erstellen

Dieses Beispiel zeigt die grundlegenden Operationen mit `Peewee` und einer MySQL-Datenbank: Tabellen erstellen, Daten einfügen und Abfragen durchführen.

Wie ihr seht, sind dazu keine SQL-Kommandos notwendig. Dies wird durch das ORM-Framework *peewee* im Hintergrund gemacht.

Beachtet die Erklärungen hinter den (+)


Beantworte folgende Fragen:

* Wie wird der PrimaryKey erstellt? Untersuche dazu die Tabelle mit der MySQL-Workbench.
* In welchem Zusammenhang steht die Funktion `PrimaryKeyField()` in PeeWee, welche hier nicht verwendet wird. Der PrimaryKey wird aber trotzdem erstellt...


Die offizielle Dokumentation zum `peewee`-Framework findet ihr [hier](https://docs.peewee-orm.com/en/latest/){:target="_blank"}.          



``` py linenums="1"
from peewee import *
import pymysql

# Verbinde dich mit einer MySQL-Datenbank
db = MySQLDatabase(  # (1)
    'MYDB',  # Name der Datenbank. Irgendeine dummy-DB
    user='ihr_username',  # Benutzername
    password='ihr_passwort',  # Passwort
    host='localhost',  # Hostname dbserver.bfh.ch oder localhost
    port=3306  # Portnummer
)

# Definiere eine Basisklasse für alle Modelle
class BaseModel(Model): # (2)
    class Meta:
        database = db  # Weist die MySQL-Datenbank zu

# Definiere das User-Modell 
class User(BaseModel): # (3)
    username = CharField()
    password = CharField()
    email = CharField()

    class Meta:
        table_name = 'peeweeusers'  # Legt den Tabellennamen fest

# Erstelle die Tabelle in der Datenbank
db.connect()
db.create_tables([User]) # (4)

# Füge einige Benutzerdaten ein # (5)
user1 = User.create(username='tjaeggi', password='passwordtj', email='thomas.jaeggi@bfh.ch')
user2 = User.create(username='tluginbuehl', password='secretpw', email='tim.luginbuehl@bfh.ch')

# Führe eine einfache Abfrage durch
users = User.select()  # (6)
for user in users:
    print(user.username, user.email)

```


1.  :man_raising_hand: Wir verwenden MySQL als Datenbank und stellen die Verbindung mit MySQLDatabase her, wobei die Datenbankdetails wie Name, Benutzername, Passwort, Host und Port angegeben werden.
2.  :man_raising_hand: Das `BaseModel` definiert die gemeinsame Datenbank für alle Modelle.
3.  :man_raising_hand: User-Modell: Definiert die User-Tabelle mit drei Feldern: `username`, `password` und `email`.
4.  :man_raising_hand: Tabellen erstellen: `db.create_tables([User])` erstellt die User-Tabelle in der Datenbank.
5.  :man_raising_hand: Daten einfügen: `User.create(...)` fügt neue Benutzer in die User-Tabelle ein.
6.  :man_raising_hand: Abfrage: `User.select()` wählt alle Benutzer aus der Tabelle und gibt deren Benutzernamen und E-Mail aus.