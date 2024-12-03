# Einführungsbeispiel mit PeeWee ORM-Framework

## PeeWee als ORM-Framework mit pip installieren


``` py
pip install peewee
```


## Einfaches Beispiel erstellen

Das Beispiel erstellt in einer MySQL-DB eine Tabelle `peeweusers`, fügt 2 Records hinzu und fragt diese ab.
Wie ihr seht, sind dazu keine SQL-Kommandos notwendig. Dies wird durch das ORM-Framework *peewee* im Hintergrund gemacht.


``` py
from peewee import *
import pymysql

# Verbinde dich mit einer MySQL-Datenbank
db = MySQLDatabase(
    'MYDB',  # Name der Datenbank. Irgendeine dummy-DB
    user='ihr_username',  # Benutzername
    password='ihr_passwort',  # Passwort
    host='localhost',  # Hostname dbserver.bfh.ch oder localhost
    port=3306  # Portnummer
)

# Definiere eine Basisklasse für alle Modelle
class BaseModel(Model):
    class Meta:
        database = db  # Weist die MySQL-Datenbank zu

# Definiere das User-Modell
class User(BaseModel):
    username = CharField()
    password = CharField()
    email = CharField()

    class Meta:
        table_name = 'peeweeusers'  # Legt den Tabellennamen fest

# Erstelle die Tabelle in der Datenbank
db.connect()
db.create_tables([User])

# Füge einige Benutzerdaten ein
user1 = User.create(username='tjaeggi', password='passwordtj', email='thomas.jaeggi@bfh.ch')
user2 = User.create(username='tluginbuehl', password='secretpw', email='tim.luginbuehl@bfh.ch')

# Führe eine einfache Abfrage durch
users = User.select()
for user in users:
    print(user.username, user.email)

```