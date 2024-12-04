# Python mit PostgreSQL verbinden


Das vorliegende Beispiel soll als Referenz für folgende Aufgaben dienen:

* Verbindung mit dem PostgreSQL-RDBMS erstellen
* Tabellen erstellen
* Records in Tabellen einfügen
* Records aus Tabellen lesen


## Installiere die Library `psycopg2`

Diese Library wird benötigt, damit mit Python auf eine PostgreSQL-Datenbank zugegriffen werden kann.

``` bash
pip install psycopg2-binary

```

## Datenbank kreieren
Kreiere mit pgadmin eine Datenbank mit dem Namen `btw2201_test`


## Python Script für die Erstellung einer Tabelle, Rows und einem Query für eine bestehende Database

``` py linenums="1"
import psycopg2
from psycopg2 import sql

def connect_to_db():
    try:
        # Connect to your PostgreSQL database
        conn = psycopg2.connect(
            dbname="btw2201_test",
            user="student",
            password="btw2201btw2201",
            host="localhost",
            port="5432"
        )
        print("Connection successful")
        return conn
    except Exception as e:
        print(f"Unable to connect to the database: {e}")
        return None

def create_table(cursor):
    try:
        cursor.execute("""
            CREATE TABLE IF NOT EXISTS users (
                id SERIAL PRIMARY KEY,
                name VARCHAR(100),
                age INTEGER
            )
        """)
        print("Table created successfully")
    except Exception as e:
        print(f"Error creating table: {e}")

def insert_rows(cursor):
    try:
        cursor.execute("INSERT INTO users (name, age) VALUES (%s, %s)", ("Anaïs", 21))
        cursor.execute("INSERT INTO users (name, age) VALUES (%s, %s)", ("René", 25))
        cursor.execute("INSERT INTO users (name, age) VALUES (%s, %s)", ("Madeleine", 22))
        cursor.execute("INSERT INTO users (name, age) VALUES (%s, %s)", ("Hervé", 28))
        print("Rows inserted successfully")
    except Exception as e:
        print(f"Error inserting rows: {e}")

def select_rows(cursor):
    try:
        cursor.execute("SELECT * FROM users")
        rows = cursor.fetchall()
        print("Rows selected successfully")
        for row in rows:
            print(f"id: {row[0]}, name: {row[1]}, age: {row[2]}")
    except Exception as e:
        print(f"Error selecting rows: {e}")

def main():
    conn = connect_to_db()
    if conn:
        cursor = conn.cursor()
        create_table(cursor)
        insert_rows(cursor)
        select_rows(cursor)
        conn.commit()
        cursor.close()
        conn.close()

if __name__ == '__main__':
    main()

```