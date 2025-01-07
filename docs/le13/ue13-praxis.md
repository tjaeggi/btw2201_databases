# Praktische INTEGRIERTE ÜBUNGEN

Das Erstellen von ERM's zu einer fachlichen Anforderung ist eine wichtige Datenbank-Thematik. Daher hier Aufgaben aus vergangenen Prüfungen.

## Aufgabe 1: BIBLIOTHEK

!!! question "UE13-Praxis1 - BIBLIOTHEK"

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
    
    



## Aufgabe 2: UNIHOCKEY

!!! question "UE13-Praxis2 - UNIHOCKEY"
    ERM 2:
    
    Ein Unihockeyclub nimmt mit seinem Team, bestehend aus mehreren Spielern, an verschiedenen Turnieren teil. Bei den Turnieren gibt es jeweils mehrere Spiele, die gegen andere Klubs ausgetragen werden. Pro gewonnenes Spiel gibt es 3 Punkte für das     siegreiche Team und pro unentschiedenes Spiel jeweils 1 Punkt für beide Teams. Pro Spiel, werden die erzielten Punkte/Goals protokolliert: der Schütze und die Zeit.
    
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
    
    

## Aufgabe 3: CHATAPPLIKATION

!!! question "UE13-Praxis3 - CHATAPPLIKATION"

    Eine Chatapplikation erlaubt es Nutzern sich zu unterhalten. Die Konversationen sind jeweils zwischen zwei oder mehr Teilnehmer. Sobald mehr als zwei Teilnehmer dabei sind, ist es ein Gruppenchat. Es können natürlich Nachrichten im Textformat verschickt werden. Neuerdings werden aber auch Bilder und GIFs unterstützt. Bilder/GIFs werden nicht in der Datenbank abgelegt, sondern jeweils nur ein String, welcher den Pfad der Datei (Bild/GIF) repräsentiert.    

    Am Schluss soll über alle Konversationen hinweg ein Verlauf (nach Zeit sortiert) der Konversation angezeigt werden.    

    Beispiel:    

    ```
    Konversation von Seb + Max
    --------------------------
    16:04 Seb: "Hast Du mir die Lösung für Aufgabe A?"
    16:07 Max: "Ich schicke dir einen Screenshot!"
    16:08 Max: (Media-Nachricht) path/to/file.jpeg    
    

    Gruppenchat zwischen Seb + Dan + Max
    -------------------------
    15:52 Dan: "Habt ihr morgen Abend schon was vor?"
    15:55 Seb: "Nein, was willst Du unternehmen?"
    15:57 Max: "Weihnachstmarkt?"
    ```    
    

    - Aufgabe    

        * Erstelle die physische Umsetzung der DB mit SQL-Befehlen in MySQL oder SQLite. Füge auch Beispieldatensätze hinzu. Als Grundlage und Hilfestellung, greifst Du auf das vorher erstellte konzeptionelle und logische ERM zurück.
        * Erstelle ein Python Skript, welches Abfragen auf die erstellte DB ausführt und textlich darstellt.


## Aufgabe 4: FORMULA 1

!!! question "UE13-Praxis4 - FORMULA 1"

    Nachfolgend steht Dir eine SQLite-Datenbank zur Verfügung. Es ist Teil der Aufgabe herauszufinden, wie die Datenbank aufgebaut ist und wo welche Informationen gespeichert sind. Die Datenbank hat einige Beziehungen und Tabellen mit ähnlichen (aber nicht gleichen) Informationen. Für Dich bedeutet das, dass es mehrere korrekte Lösungsansätze gibt. Lass Dich also nicht verwirren - studiere die Datenbank und wenn Du die nötigen Informationen hast, schreibe das SELECT dazu.

    - Als Tool um die Datenbank zu öffnen und zu analysieren, kannst Du verschiedene Tools verwenden:
    
        * [DB Browser (SQLite)](https://sqlitebrowser.org/){:target="_blank"} 
        * Eine Alternative ist auch [DBeaver Community](https://dbeaver.io//){:target="_blank"}.
        * Auch die Verwendung von SQLite in der Konsole ist möglich:
        <figure markdown="span">
        ![Image title](../img/07-01-2025_21-21-37.png){ width="200" }
        <figcaption>SQLite in der Konsole</figcaption>
        </figure>

    !!! danger "Bitte beachten!"
        Es wird an der Prüfung erwartet, dass ein Tool für SQLite und MySQL auf dem Notebook lauffähig ist und bedient werden kann.




    [Download SQLite Formula1-DB](../static/formula1.db){:download="Formula1-DB"}


    Dein SELECT soll folgende Übersicht produzieren. Es sollen die erreichten Punkte aller Rennen absteigend sortiert der Season im Jahre **2009** dargestellt werden. Also die erste Zeile soll der Weltmeister mit den meisten Punkten sein: Jenson Button mit 95 Punkten.

    ```
    forename |surname        |total_points|
    ---------+---------------+------------+
    Jenson   |Button         |          95|
    Sebastian|Vettel         |          84|
    Rubens   |Barrichello    |          77|
    Mark     |Webber         |        69.5|
    Lewis    |Hamilton       |          49|
    Kimi     |Kimi Räikkönen |          48|
    Nico     |Rosberg        |        34.5|
    Jarno    |Trulli         |        32.5|
    Fernando |Alonso         |          26|
    Timo     |Glock          |          24|
    Felipe   |Massa          |          22|
    Heikki   |Kovalainen     |          22|
    Nick     |Heidfeld       |          19|
    Robert   |Kubica         |          17|
    .
    .
    ```

    - Hinweise
    
        * Sonderzeichen müssen nicht korrekt dargestellt werden!
        * Die Reihenfolge bei Punktegleichheit spielt keine Rolle!
        * Idealerweise muss nur eine einzelne Zahl (2009) angepasst werden und Dein SQLite produziert auch ein korrektes Resultat für andere Jahre
    
    
### Hilfestellung Aufgabe 4

??? info "Hilfestellung"
    Hier siehst Du das ERM der Formula1-DB. 
    
    Hinweis: In der Prüfungsaufgabe war diese Hilfestellung nicht vorhanden.
    
    <figure markdown="span">
    ![Image title](../img/ERM-formula1.png){ width="1000" }
    <figcaption>ERM Formula1 Datenbank</figcaption>
    </figure>

    

    

## Aufgabe 5: SMARTWATCHES

!!! question "UE13-Praxis5 - SMARTWATCHES"

    Die Auswahl für Smartwatches soll in einem standardisierten Format abgespeichert werden. Die verschiedenen Hersteller haben verschiedene Produkte, welche zu unterschiedlichen Zeitpunkten auf dem Markt erschienen sind. Jede dieser Uhren hat meist spezifische physische Gegebenheiten (Grösse, Gewicht, Display, etc). Die Uhren haben auch Eigenschaften, welche sie teilen. Nennen wir sie verschiedene Funktionalitäten (Features). Ein Beispiel könnte sein Pulssensor, Wasserdichtheit und viele weitere.
    
    - Aufgabe
    
        * Erstellen Sie dazu ein konzeptionelles und logisches ERM
        * Erstellen Sie die Datenbank physisch mit einer DB und einem Tool ihrer Wahl inkl. Demodaten. Erstellen Sie dazu ein SQL-Skript, welches alles enthält: Erstellung des Schemas, Kreieren der Tabellen mit Constraints, Laden von Demodatensätzen.
        * Auch hier sollten sie mit Python auf die DB zugreifen können und Abfragen ausühren.
