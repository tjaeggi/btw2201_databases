
# Theoretische Fragen


!!! question "UE13-Theorie-Frage 1 - NoSQL oder RDBMS?"

    Was würdest Du für eine global eingesetzte Chat-Anwendung (Beispiel *Whatsapp* oder *Telegram*) bevorzugen? Nenne mindestens 4 Gründe für Deine Wahl.

??? success "Lösungsvorschlag Frage 1"
    Für eine Chat-Anwendung wie WhatsApp würde man in der Regel eine NoSQL-Datenbank bevorzugen. Hier sind einige **Gründe für NoSQL**:

    1.  **Hohe Skalierbarkeit**: NoSQL-Datenbanken, wie z.B. Cassandra oder MongoDB, sind für eine horizontale Skalierung konzipiert, was bedeutet, dass sie einfach über mehrere Server oder Knoten hinweg verteilt werden können. Dies ist entscheidend für Chat-Anwendungen, die Millionen von Benutzern und Nachrichten in Echtzeit verarbeiten müssen.
    2.  **Flexibilität bei der Datenmodellierung**: Chat-Anwendungen erfordern oft flexible Datenmodelle, um verschiedene Arten von Nachrichten, Anhängen, Metadaten und Benutzerinformationen zu speichern. NoSQL-Datenbanken bieten schemalose oder schema-leichte Strukturen, die sich leicht an wechselnde Anforderungen anpassen lassen.
    3.  **Hohe Schreib- und Lesegeschwindigkeit**: NoSQL-Datenbanken sind für hohe Schreib- und Lesegeschwindigkeiten optimiert, was für die Echtzeit-Kommunikation in Chat-Anwendungen unerlässlich ist. Sie können grosse Mengen von Daten schnell speichern und abrufen.
    4.  **Eventual Consistency**: NoSQL-Datenbanken unterstützen oft das Konzept der eventual consistency, was bedeutet, dass die Daten nicht sofort, aber schliesslich konsistent sein werden. Dies ermöglicht eine höhere Verfügbarkeit und Leistung, was für eine Chat-Anwendung von Vorteil ist.
    5.  **Verteilung und Replikation**: NoSQL-Datenbanken bieten eingebaute Mechanismen zur Datenverteilung und -replikation über verschiedene geografische Standorte. Dies stellt sicher, dass die Anwendung auch bei Ausfällen eines oder mehrerer Knoten weiterhin verfügbar bleibt und die Latenzzeiten für Benutzer weltweit minimiert werden.
    6.  **Echtzeit-Analyse und Monitoring**: Einige NoSQL-Datenbanken sind für die Echtzeitanalyse optimiert, was es ermöglicht, sofortige Einblicke in die Nutzungsmuster und Leistungsmetriken der Anwendung zu gewinnen.
    7.  **Hohe Verfügbarkeit**: NoSQL-Datenbanken sind oft so konzipiert, dass sie eine hohe Verfügbarkeit gewährleisten, was für eine Chat-Anwendung, die rund um die Uhr funktionieren muss, unerlässlich ist.


    Natürlich gibt es auch Szenarien, in denen relationale Datenbanken verwendet werden könnten, aber für die speziellen Anforderungen einer grossen, globalen Chat-Anwendung wie WhatsApp sind die oben genannten Vorteile von NoSQL-Datenbanken oft ausschlaggebend.

    Trotzdem: Welche **Argumente würden für ein relationales Datenbanksystem sprechen**?

    1.  **Datenintegrität**: Relationale Datenbanksysteme (RDBMS) bieten starke Mechanismen zur Gewährleistung der Datenintegrität durch die Verwendung von Primär- und Fremdschlüsseln sowie durch Referenzielle Integrität. Dies stellt sicher, dass die Beziehungen zwischen den Daten konsistent bleiben.
    2.  **Strukturierte Daten**: RDBMS eignen sich hervorragend für strukturierte Daten mit klar definierten Schemas. Die Daten sind in Tabellen organisiert, was die Verwaltung und Abfrage erleichtert.
    3.  **ACID-Eigenschaften**: Relationale Datenbanken unterstützen die ACID-Eigenschaften (Atomicity, Consistency, Isolation, Durability), die sicherstellen, dass Transaktionen zuverlässig und sicher ausgeführt werden. Dies ist besonders wichtig für Anwendungen, die hohe Zuverlässigkeit und Datenintegrität erfordern.
    4.  **Leistungsstarke Abfragesprache**: SQL ist eine leistungsstarke und standardisierte Sprache, die von relationalen Datenbanken unterstützt wird. SQL ermöglicht komplexe Abfragen und Manipulationen der Daten und ist weit verbreitet und gut dokumentiert.
    5.  **Datenkonsistenz**: In relationalen Datenbanken wird die Konsistenz der Daten durch strikte Transaktionsprotokolle und Sperrmechanismen gewährleistet. Dies ist besonders wichtig für Anwendungen, bei denen die Genauigkeit und Zuverlässigkeit der Daten entscheidend sind.
    6.  **Etablierte Technologien**: RDBMS sind seit Jahrzehnten etabliert und weit verbreitet. Es gibt eine Fülle von Ressourcen, Werkzeugen und Unterstützung für die Implementierung und Wartung von relationalen Datenbanken.
    7.  **Normalisierung**: Die Normalisierung in RDBMS hilft, Redundanzen zu minimieren und die Datenkonsistenz zu verbessern, indem Daten auf mehrere Tabellen verteilt und Beziehungen zwischen ihnen definiert werden.
    8.  **Skalierbarkeit**: Während NoSQL-Datenbanken oft als besser skalierbar angesehen werden, bieten moderne RDBMS auch Skalierungsmöglichkeiten sowohl vertikal (durch Hinzufügen von mehr Ressourcen zu einem einzigen Server) als auch horizontal (durch Partitionierung und Replikation der Daten über mehrere Server).
    9.  **Sicherheitsfunktionen**: Relationale Datenbanken bieten robuste Sicherheitsfunktionen, einschliesslich Benutzerberechtigungen, Zugriffskontrollen und Verschlüsselung. Diese Funktionen sind entscheidend für den Schutz sensibler Daten.
    10. **Transaktionen und Rollbacks**: RDBMS unterstützen Transaktionen, die mehrere Operationen als eine Einheit behandeln. Wenn eine Operation fehlschlägt, können alle Änderungen zurückgesetzt werden, um den vorherigen konsistenten Zustand wiederherzustellen.

    Diese Eigenschaften machen relationale Datenbanksysteme besonders geeignet für Anwendungen, die hohe Anforderungen an **Datenintegrität**, **Konsistenz** und **Zuverlässigkeit** stellen. 
    
    

!!! question "UE13-Theorie-Frage 2"
    Angenommen, wir haben eine Tabelle *Mitarbeiter* mit den folgenden Attributen:
    
    ```
    Mitarbeiter-ID (Primärschlüssel)
    Abteilungs-ID
    Abteilungsname
    Abteilungsleiter
    ```

    Was für ein Problem erkennst Du hier? Welche Regel wird hier verletzt? Wie lautet dazu der Fachbegriff. Erkläre in eigenen Worten.

??? success "Lösungsvorschlag Frage 2"

    Hier wird die **transitive Abhängigkeit** verletzt. Diese soll in einer relationalen Datenbank unbedingt vermieden werden.

    Eine transitive Abhängigkeit in einer Datenbank tritt auf, wenn ein Nichtschlüsselattribut von einem anderen Nichtschlüsselattribut über ein weiteres Nichtschlüsselattribut funktional abhängig ist. Mit anderen Worten: Wenn Attribut A von Attribut B abhängt, und Attribut B von Attribut C abhängt, dann ist Attribut A transitiv von Attribut C abhängig.

    In diesem Beispiel ist Mitarbeiter-ID der Primärschlüssel. Es gibt eine funktionale Abhängigkeit zwischen Mitarbeiter-ID und Abteilungs-ID (da jeder Mitarbeiter zu einer Abteilung gehört) und eine funktionale Abhängigkeit zwischen Abteilungs-ID und Abteilungsname sowie Abteilungsleiter. Dies führt zu einer transitiven Abhängigkeit zwischen Mitarbeiter-ID und Abteilungsname sowie Abteilungsleiter über Abteilungs-ID.

    **Warum sollten transitive Abhängigkeiten vermieden werden?**

    1.  **Datenanomalien**:
        1.  **Einfügeanomalie**: Es kann schwierig sein, neue Daten einzufügen, ohne vorhandene Daten zu duplizieren. Zum Beispiel kann man keinen neuen Abteilungsleiter hinzufügen, ohne einen Mitarbeiter hinzuzufügen.
        2.  **Löschanomalie**: Löschen eines Mitarbeiters kann dazu führen, dass Informationen über die Abteilung verloren gehen, wenn der Mitarbeiter der letzte in dieser Abteilung ist.
        3.  **Änderungsanomalie**: Wenn der Abteilungsname oder -leiter geändert werden muss, muss dies an mehreren Stellen erfolgen, was zu Inkonsistenzen führen kann.
    2.  **Redundanz**: Durch transitive Abhängigkeiten werden Daten redundant gespeichert. Dies erhöht den Speicherplatzbedarf und führt zu Problemen bei der Datenkonsistenz.
    3.  **Schwierige Wartung**: Die Verwaltung und Wartung einer Datenbank mit transitiven Abhängigkeiten ist komplexer und fehleranfälliger.


    **Lösung:**

    Um transitive Abhängigkeiten zu vermeiden, sollte die Datenbank in die dritte Normalform (3NF) gebracht werden. In der 3NF sollten alle Nichtschlüsselattribute direkt und nur von Schlüsseln abhängen.

    Im obigen Beispiel könnte man die Tabelle in zwei Tabellen aufteilen:

    *  Mitarbeiter (Mitarbeiter-ID, Abteilungs-ID)
    *  Abteilung (Abteilungs-ID, Abteilungsname, Abteilungsleiter)

    Dies eliminiert die transitiven Abhängigkeiten und normalisiert die Datenbankstruktur.



!!! question "UE13-Theorie-Frage 3"


    Du versuchst einen Constraint zu erstellen, damit eine Referenz (FOREIGN KEY) zwischen `ticket` und `person` erstellt wird. Dabei erscheint jedoch ein Fehler. Beschreibe warum das DBMS so reagiert? Wieso lässt es nicht zu diese Referenz zu erstellen?
    
    ``` SQL linenums="1"
    CREATE TABLE `ticket` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `id_person` INT NOT NULL,
        `seat` VARCHAR(12),
        PRIMARY KEY (`id`),
        CONSTRAINT `ticket_person`
          FOREIGN KEY (`id_person`)
          REFERENCES`person`(`id`)
          ON UPDATE SET NULL
          ON DELETE SET NULL
    ); 
    ```

    Fehlermeldung:

    `ERROR 1830 (HY000): Column 'id_person' cannot be NOT NULL: needed in a foreign key constraint 'ticket_person' SET NULL`

??? success "Lösungsvorschlag Frage 3"

    Der Fehler tritt auf, weil das DBMS (Datenbankmanagementsystem) nicht zulässt, dass eine NOT NULL-Spalte in einer Fremdschlüssel-Beziehung mit `ON UPDATE SET NULL` oder `ON DELETE SET NULL` verwendet wird.

    **Grund für den Fehler:**

    *  **Fremdschlüssel-Bedingung**: Wenn eine Fremdschlüsselbedingung ON UPDATE SET NULL oder ON DELETE SET NULL definiert ist, bedeutet dies, dass der Fremdschlüsselwert (id_person in diesem Fall) auf NULL gesetzt werden soll, wenn der referenzierte Datensatz in der person-Tabelle aktualisiert oder gelöscht wird.
    *  NOT NULL-**Spalte**: Die Spalte id_person ist als NOT NULL definiert. Das bedeutet, dass sie keine NULL-Werte enthalten darf.



    Der Konflikt entsteht, weil die Fremdschlüsselregel besagt, dass `id_person` auf `NULL` gesetzt werden soll, aber die `NOT NULL`-Einschränkung dies verhindert. Das DBMS kann diese widersprüchlichen Anweisungen nicht ausführen, daher wird der Fehler `ERROR 1830 (HY000): Column 'id_person' cannot be NOT NULL: needed in a foreign key constraint 'ticket_person' SET NULL` angezeigt.


    
!!! question "UE13-Theorie-Frage 4"
    Welche Möglichkeiten gibt es, das Problem in `UE13-Theorie 3` zu lösen? Nenne eine mögliche Lösung, indem Du das SQL korrigierst. Welche Zeilen änderst Du wie?

??? success "Lösungsvorschlag Frage 4"
    
    **Variante 1:**

    Ändern Sie die Spalte `id_person`, um `NULL`-Werte zuzulassen: Wenn es in Ordnung ist, dass `id_person` `NULL`-Werte enthalten kann, können Sie die `NOT NULL`-Einschränkung entfernen.

    ```sql
    CREATE TABLE `ticket` (
    `id` INT **NOT NULL** AUTO_INCREMENT,
    `id_person` INT,
    `seat` VARCHAR(12),
    PRIMARY KEY (`id`),
    CONSTRAINT `ticket_person`
      FOREIGN KEY (`id_person`)
      REFERENCES `person` (`id`)
      ON UPDATE SET NULL
      ON DELETE SET NULL
    );
    ```


    **Variante 2:**

    Ändern Sie die Fremdschlüsselbedingung: Wenn die `NOT NULL`-Einschränkung beibehalten werden soll, können Sie die Fremdschlüsselbedingung ändern, sodass die Spalte nicht auf `NULL` gesetzt wird. Zum Beispiel:

    ```sql
    CREATE TABLE `ticket` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `id_person` INT NOT NULL,
        `seat` VARCHAR(12),
       PRIMARY KEY (`id`),
       CONSTRAINT `ticket_person`
         FOREIGN KEY (`id_person`)
         REFERENCES `person` (`id`)
         **ON UPDATE CASCADE**
         **ON DELETE RESTRICT**
    );
    ```

    In diesem Beispiel wird `ON UPDATE CASCADE` sicherstellen, dass Änderungen an der `person`-Tabelle auf die `ticket`-Tabelle übertragen werden, und `ON DELETE RESTRICT` verhindert das Löschen eines Datensatzes aus der `person`-Tabelle, wenn er von der `ticket`-Tabelle referenziert wird.


!!! question "UE13-Theorie-Frage 5"

    Wodurch kann der unten angegebene Fehler verursacht werden? Welche Massnahmen würdest Du hier ergreifen?

    `ERROR 1824 (HY000): Failed to open the referenced table 'person'`

??? success "Lösungsvorschlag Frage 5"

    Der Fehler `ERROR 1824 (HY000)`: `Failed to open the referenced table 'person'` tritt normalerweise auf, wenn die referenzierte Tabelle (`person`) aus irgendeinem Grund nicht geöffnet oder gefunden werden kann. Dies kann durch verschiedene Faktoren verursacht werden:

    1.  **Tabelle existiert nicht**: Die Tabelle `person` könnte nicht existieren, entweder weil sie nie erstellt wurde oder weil sie gelöscht wurde.
    2.  **Datenbankname nicht angegeben**: Wenn die referenzierte Tabelle in einer anderen Datenbank als der aktuellen liegt, aber der Datenbankname nicht angegeben wurde, kann dies zu diesem Fehler führen.
    3.  **Zugriffsrechte**: Möglicherweise hat der Benutzer, der die Fremdschlüsseleinschränkung erstellt, nicht die erforderlichen Rechte, um auf die Tabelle `person` zuzugreifen.
    4.  **Tabelle beschädigt**: Die Tabelle `person` könnte beschädigt oder in einem inkonsistenten Zustand sein, was das Öffnen der Tabelle verhindert.
    5.  **Gross-/Kleinschreibung**: In einigen Datenbanksystemen wird zwischen Gross- und Kleinschreibung unterschieden. Wenn die Tabellennamen im `CREATE TABLE`-Statement und in der Datenbank unterschiedlich geschrieben sind, kann dies zu dem Fehler führen.


!!! question "UE13-Theorie-Frage 6"

    Beschreibe was nachfolgendes Query macht. 

    `SELECT COUNT(DISTINCT `address`) AS `street` FROM `contacts`;`


??? success "Lösungsvorschlag Frage 6"
    Gib mir die *Anzahl* **unterschiedlicher** Adresszeilen in der Tabelle contacts. 


!!! question "UE13-Theorie-Frage 7"

    Erkläre in Deinen eigenen Worten, was ein ORM konzeptionell macht.

??? success "Lösungsvorschlag Frage 7"

    Ein ORM (Object Relational Mapping) Konzept ist ein Programmierparadigma, das es Entwicklern ermöglicht, Datenbankoperationen auf eine objektorientierte Weise durchzuführen. Anstatt SQL-Abfragen direkt in den Code zu schreiben, können Entwickler Datenbankoperationen durch das Arbeiten mit Objekten und deren Methoden ausführen.    

    Eine der bekanntesten ORM-Bibliotheken in Python ist SQLAlchemy und Peewee.


!!! question "UE13-Theorie-Frage 8"
    Beschreibe die Idee hinter einem JOIN und was ist der Unterschied eines RIGHT JOIN und eines LEFT JOIN?

??? success "Lösungsvorschlag Frage 8"

    Die Idee hinter einem JOIN in SQL besteht darin, Daten aus zwei oder mehr Tabellen basierend auf einem gemeinsamen Feld zu kombinieren. Dies ermöglicht es, Informationen aus verschiedenen Tabellen in einer einzigen Abfrage zu verknüpfen und zu analysieren.

    **Arten von JOINs und ihre Unterschiede:**

    *  **INNER JOIN oder JOIN**: Nur die Datensätze, bei denen die verknüpften Felder **in beiden Tabellen** übereinstimmen, werden in das Ergebnis einbezogen.
    *  **LEFT JOIN**: Alle Datensätze **aus der linken Tabelle** **und die übereinstimmenden Datensätze aus der rechten Tabelle** werden einbezogen. Wenn keine Übereinstimmung in der rechten Tabelle gefunden wird, werden **NULL-Werte** für die Felder der rechten Tabelle zurückgegeben.
    *  **RIGHT JOIN**: Alle Datensätze **aus der rechten Tabelle** **und die übereinstimmenden Datensätze aus der linken Tabelle** werden einbezogen. Wenn keine Übereinstimmung in der linken Tabelle gefunden wird, werden **NULL-Werte** für die Felder der linken Tabelle zurückgegeben.







!!! question "UE13-Theorie-Frage 9"

    Sie sind dabei eine Datenbank zu modelieren: Es gibt verschiedene Kategorien und dazugehörige Produkte. Dabei soll es möglich sein, dass beliebige Unterkategorien erstellt werden können. Ein Produkt gehört entweder einer Kategorie oder Unterkategorie an. Beschreiben Sie in Worten (kein Code) eine mögliche Lösung.

??? success "Lösungsvorschlag Frage 9"

    *  Um die Hierarchie von Kategorien und Unterkategorien darzustellen, wird das Attribut ElternID in der Kategorien-Tabelle verwendet. Dies erlaubt es, beliebig tief verschachtelte Kategorien zu erstellen. Eine Hauptkategorie hat eine ElternID von NULL, während eine Unterkategorie auf die KategorieID ihrer übergeordneten Kategorie verweist.
    *  Jedes Produkt in der Produkte-Tabelle wird einer Kategorie oder Unterkategorie zugewiesen durch das Attribut KategorieID, das auf die entsprechende KategorieID in der Kategorien-Tabelle verweist.


!!! question "UE13-Theorie-Frage 10"

    Nenne vier verschiedene Datentypen eines Datenbankmanagementsystems und gebe Beispielwerte an.

??? success "Lösungsvorschlag Frage 10"
    
    Antworten sind  auch in den gemachten Aufgaben.

    *  **DECIMAL**: wird verwendet, um genaue numerische Werte zu speichern. Dies ist besonders nützlich für finanzielle Daten oder andere Anwendungen, bei denen Genauigkeit entscheidend ist. Man kann die Genauigkeit (Anzahl der Ziffern insgesamt) und die Skalierung (Anzahl der Ziffern nach dem Dezimalpunkt) explizit angeben, z.B. `DECIMAL(10, 4)` bedeutet eine maximale Zahl mit 10 Ziffern insgesamt, von denen 4 nach dem Dezimalpunkt liegen. Beispiele: 12345.6789, -9876.54321, 100.00, 0.0001
    *  **FLOAT**: wird verwendet, um Fliesskommazahlen zu speichern, die eine gewisse Genauigkeit haben, aber nicht exakt sind. Es ist besonders nützlich für wissenschaftliche Berechnungen und Anwendungen, bei denen die Genauigkeit flexibel sein kann. Es unterstützt die Darstellung von Werten in wissenschaftlicher Notation (z.B. 1.23456789e+10 für 12345678900). Beispiele: 3.1415927, -2.71828
    *  **CHAR**: steht für "Character" und wird verwendet, um Zeichenketten fester Länge zu speichern. Wenn du einen CHAR(10)-Datentyp definierst, bedeutet das, dass die Zeichenkette immer genau 10 Zeichen lang ist.
    *  **VARCHAR**: steht für "Variable Character" und wird verwendet, um Zeichenketten variabler Länge zu speichern. Wenn du einen VARCHAR(50)-Datentyp definierst, kann die Zeichenkette jede beliebige Länge bis zu 50 Zeichen haben. Im Gegensatz zu CHAR wird eine Zeichenkette in VARCHAR nicht mit Leerzeichen aufgefüllt. Sie wird in der exakten Länge gespeichert, die eingegeben wurde. Zum Beispiel wird "Hi" in einem VARCHAR(5)-Feld als "Hi" gespeichert, belegt also nur 2 Byte und reserviert nicht 5.

!!! question "UE13-Theorie-Frage 11"

    Es existieren konzeptionellen Elementen in einem RDBMS, welche Elementen in InfluxDB sehr ähnlich sind. Die Begriffe sind jedoch unterschiedlich. Stellen Sie 4 Begriffe in einer Vergleichstabelle einander gegenüber.

    |Element in RDBMS |Element in InfluxDB|
    |-----------------|-------------------|
    |.                |.                  |
    |.                |.                  |
    |.                |.                  |
    |.                |.                  |

??? success "Lösungsvorschlag Frage 11"

    |Element in RDBMS |Element in InfluxDB|
    |-----------------|-------------------|
    |Datenbank/Schema |Bucket             |
    |Tabelle          |Measurement        |
    |Attribut         |Field              |
    |Index            |Tag                |

