
# Thoriefragen


!!! question "UE13-Theorie-Frage 1 - NoSQL oder RDBMS?"

    Was würdest Du für eine global eingesetzte Chat-Anwendung (Beispiel *Whatsapp* oder *Telegram*) bevorzugen? Nenne mindestens 4 Gründe für Deine Wahl.

!!! question "UE13-Theorie-Frage 2"
    Angenommen, wir haben eine Tabelle *Mitarbeiter* mit den folgenden Attributen:
    
    ```
    Mitarbeiter-ID (Primärschlüssel)
    Abteilungs-ID
    Abteilungsname
    Abteilungsleiter
    ```

    Was für ein Problem erkennst Du hier? Welche Regel wird hier verletzt? Wie lautet dazu der Fachbegriff. Erkläre in eigenen Worten.



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
    
!!! question "UE13-Theorie-Frage 4"
    Welche Möglichkeiten gibt es, das Problem in `UE13-Theorie 3` zu lösen? Nenne eine mögliche Lösung, indem Du das SQL korrigierst. Welche Zeilen änderst Du wie?


!!! question "UE13-Theorie-Frage 5"

    Wodurch kann der unten angegebene Fehler verursacht werden? Welche Massnahmen würdest Du hier ergreifen?

    `ERROR 1824 (HY000): Failed to open the referenced table 'person'`




