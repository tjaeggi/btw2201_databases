## LE04 – Einführung Bindings

Mit Binding versteht man die Übergabe von Variablenwerten in SQL-Statements. Damit können User-Eingaben in SQL-Statements übernommen werden.

Erstes einfaches Beispiel:
Die Usereingabe des Genres, listet alle dazugehörenden Songs aus. Als Genre sind gültig: Latin, Metal, Rock, Jazz, Bossa Nova, Blues, etc.


```py title="HelloDB.py "linenums="1"
import os 
import sqlite3 

# Datenbank öffnen und verbinden
conn = sqlite3.connect(os.path.join('C:/Users/tom/WORKLOCAL/PythonProj/UE04','chinook.db')) 

# Cursor kreieren. Dieser wird im Zusammenhang mit einem Query verwendet
cur = conn.cursor() 

bind_value = input("Genre: ")
print(bind_value)

query = "SELECT * FROM songs WHERE genre = ?;"
# Query mit Cursor ausführen 
cur.execute(query, (bind_value,)) # (1)
# alternative Schreibweise für single element tupel: cur.execute(query, [bind_value])


# Bearbeite jede Zeile des Result-Sets
for row in cur.fetchall():  
    print(row)

# Schliesse Cursor und Verbindung
cur.close() 
conn.close() 
```

1. Als Eingabe wird ein Single-Element-Tupel erwartet! Python requires a comma to create a single element tuple ! Alternativ: cur.execute(query, [bind_value])

!!! danger "zum Erinnern!"

    Single Element Tupel immer mit Komma! Tupel werden vom cursor.execute() erwartet. Ohne Komma ist der Datentyp ein String.

    ```py
    >>> type(('eins',))
    <class 'tuple'>
    >>> type(('eins'))
    <class 'str'>
    >>>
    ```








