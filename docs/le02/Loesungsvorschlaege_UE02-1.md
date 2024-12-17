# UE02-2 Aufgaben 

!!! question "Frage 1"

     Wie viele Songs hat der Artist 'U2'?

=== "Antwort"

    ```text
    135
    ```
=== "SQL"

    ```sql
    SELECT count(*) FROM songs WHERE artist = 'U2';
    ```



!!! question "Frage 2"

     Wie teuer würde es uns kommen, wenn wir alle Songs vom Artist 'Kiss' kaufen würden?

=== "Antwort"

    ```text
    Kosten_for_all_Kiss_Songs
    -------------------------
    34.65
    ```
=== "SQL"

    ```sql
    SELECT SUM(price) as "Costs for all Kiss Songs" FROM songs WHERE artist = 'Kiss';
    ```

!!! question "Frage 3"

     Wie lange dauert es, wenn wir uns alle Songs von den "Red Hot Chili Peppers" anhören?

=== "Antwort"

    ```text
    199 Minuten (Duration ist in msec angegeben)
    ```
=== "SQL"

    ```sql
    SELECT SUM(duration)/1000/60 FROM songs WHERE artist = 'Red Hot Chili Peppers';
    ```

!!! question "Frage 4"

     Wie viele verschiedene Artisten sind in der Datenbank vorhanden?

=== "Antwort"

    ```text
    204
    ```
=== "SQL"

    ```sql
    SELECT COUNT(DISTINCT artist) FROM songs;
    ```

!!! question "Frage 5"

     Welcher Song hat den höchsten Preis pro Sekunde?

=== "Antwort"

    ```text
    É Uma Partida De Futebol: 0.92436974789916/sec
    ```
=== "SQL"

    ```sql
    SELECT song, (price/duration*1000) as Price_per_sec FROM songs ORDER BY Price_per_sec desc LIMIT 1;
    ```

!!! question "Frage 6"

     Wie viele Alben hat der Artist 'Audioslave'?

=== "Antwort"

    ```text
    3
    ```
=== "SQL"

    ```sql
    SELECT COUNT(DISTINCT album) FROM songs WHERE artist = 'Audioslave';
    ```

!!! question "Frage 7"

     Wie viele Artisten gibt es, welche mindestens einen Song mit dem Genre 'Metal' haben?

=== "Antwort"

    ```text
    14
    ```
=== "SQL"

    ```sql
    SELECT COUNT(DISTINCT artist) FROM songs WHERE genre='Metal';
    ```

