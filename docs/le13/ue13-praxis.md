# Praktische INTEGRIERTE ÜBUNGEN

Das Erstellen von ERM's zu einer fachlichen Anforderung ist eine wichtige Datenbank-Thematik. Daher hier Aufgaben aus vergangenen Prüfungen.


!!! question "UE13-Praxis1"

    ERM1:
    Sie wurden beauftragt, eine Datenbank für eine Bibliothek zu entwerfen. Die Bibliothek möchte ihre Bücher, Autoren, Verlage,     Mitglieder und Ausleihen effizient verwalten. Ihre Aufgabe ist es, ein ERM zu erstellen, das alle relevanten Entitäten und deren     Beziehungen abbildet.
    
    Ihre Aufgabe ist es für folgende Anforderungen ein **konzeptionelles** und ein **logisches** ERM zu erstellen.
    
    Anforderungen:
    
    1.  Entitäten und Attribute:
    
        1.  Buch: ISBN, Titel, Erscheinungsjahr, Seitenzahl, Verlags-ID (Fremdschlüssel)
        2.  Autor: Autor-ID, Vorname, Nachname, Geburtsdatum
        3.  Verlag: Verlags-ID, Name, Adresse
        4.  Mitglied: Mitglieds-ID, Vorname, Nachname, Geburtsdatum, Mitgliedsdatum
        5.  Ausleihe: Ausleih-ID, Buch-ISBN (Fremdschlüssel), Mitglieds-ID (Fremdschlüssel), Ausleihdatum Rückgabedatum
    
    
    2.  Beziehungen
    
        1.  Ein Buch kann von mehreren Autoren geschrieben werden, und ein Autor kann mehrere Bücher schreiben.
        2.  Ein Buch wird von einem Verlag verlegt.
        3.  Ein Mitglied kann mehrere Bücher ausleihen, und jedes Buch kann von verschiedenen Mitgliedern ausgeliehen werden.
    
    





!!! question "UE13-Praxis2"
    ERM 2:
    
    Ein Unihockeyclub nimmt mit seinem Team, bestehend aus mehreren Spielern, an verschiedenen Turnieren teil. Bei den Turnieren     gibt es jeweils mehrere Spiele, die gegen andere Klubs ausgetragen werden. Pro gewonnenes Spiel gibt es 3 Punkte für das     siegreiche Team und pro unentschiedenes Spiel jeweils 1 Punkt für beide Teams. Pro Spiel, werden die erzielten Punkte/Goals     protokolliert: der Schütze und die Zeit.
    
    Am Schluss soll eine Übersicht erstellt werden darüber, welche Teams am besten waren.
    
    Beispiel:
    
    ``` bash
    SVSE Unihockey Schweizermeisterschaft
    Name        Gewonnen  Unentschieden  Verloren  Punkte
    Team H          6           0            0       18
    Team F          5           1            0       16
    ....
    Team B          1           2            3       5
    Team I          0           1            5       1
    
    Plauschturnier Misch-Masch-Master
    Name        Gewonnen  Unentschieden  Verloren  Punkte
    Team X          4           0            0       12
    Team Y          3           0            1       9
    ....
    Team W          2           0            2       6
    Team Z          1           1            2       4
    ```
    
    Mit dieser Ausgangslage bekommst Du den Auftrag eine dazugehörige Applikation samt relationalem Datenbank(-Schema) umzusetzen. 
    
    - Aufgabe
    
        * Erstelle die physische Umsetzung der DB mit SQL-Befehlen in MySQL oder SQLite. Füge auch Beispieldatensätze hinzu. Als Grundlage und Hilfestellung, greifst Du auf das vorher erstellte logische ERM zurück.
        * Erstelle ein Python Skript, welches Abfragen auf die erstellte DB ausführt und textlich darstellt.
    
    

!!! question "UE13-Praxis3"

    Eine Chatapplikation erlaubt es Nutzern sich zu unterhalten. Die Konversationen sind jeweils zwischen zwei oder mehr Teilnehmer. Sobald mehr als zwei Teilnehmer dabei sind, ist es ein Gruppenchat. Es können natürlich Nachrichten im Textformat verschickt werden. Neuerdings werden aber auch Bilder und GIFs unterstützt. Bilder/GIFs werden nicht in der Datenbank abgelegt, sondern jeweils nur ein String, welcher den Pfad der Datei (Bild/GIF) repräsentiert.    

    Am Schluss soll über alle Konversationen hinweg ein Verlauf (nach Zeit sortiert) der Konversation angezeigt werden.    

    Beispiel:    

    ```
    Konveration von Seb + Max
    ----------------------
    16:04 Seb: "Hast Du mir die Lösung für Aufgabe A?"
    16:07 Max: "Ich schicke dir einen Screenshot!"
    16:08 Max: (Media-Nachricht) path/to/file.jpeg    
    

    Gruppenchat zwischen Seb + Dan + Max
    ---------------------
    15:52 Dan: "Habt ihr morgen Abend schon was vor?"
    15:55 Seb: "Nein, was willst Du unternehmen?"
    15:57 Max: "Weihnachstmarkt?"
    ```    
    

    - Aufgabe    

        * Erstelle die physische Umsetzung der DB mit SQL-Befehlen in MySQL oder SQLite. Füge auch Beispieldatensätze hinzu. Als     Grundlage und Hilfestellung, greifst Du auf das vorher erstellte konzeptionelle und logische ERM zurück.
        * Erstelle ein Python Skript, welches Abfragen auf die erstellte DB ausführt und textlich darstellt.