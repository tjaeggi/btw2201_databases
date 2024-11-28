# INDEX Perfomance Messung

<figure markdown="span">
  ![Image title](../img/speed2.png){ width="500" }
  <figcaption>Speed mit INDEX!</figcaption>
</figure>

!!! danger "Performancesteigerung mit Faktor 8000 !!!"

    Du kannst mit beiliegendem Beispiel eine Performancesteigerung dank Index selber durchführen.
    Führe beide SQLs, zuerst  `01-IDX_Messung_CreateDB_LoadDATA.sql` und dann `02-IDX_Messung_bank_bankneu.sql` in der MySQL-Workbench aus. Das 1. Skript kann einfach als Ganzes gestartet werden. Das 2. SQL-Skript ist kommentiert, beinhaltet auch neue
    Befehle für die Messung von Ausführungszeiten von SQL-Befehlen und soll **Schritt für Schritt** durchgeführt werden.

    Im Beispiel:  SELECT Befehl dauert OHNE INDEX 43 Sekunden. Mit INDEX: 5.4 Millisekunden ! --> Faktor 8000 ! 



[Download 01-IDX_Messung_CreateDB_LoadDATA.sql](../static/01-IDX_Messung_CreateDB_LoadDATA.sql){:download="01-IDX_Messung_CreateDB_LoadDATA.sql"}

[Download 02-IDX_Messung_bank_bankneu.sql](../static/02-IDX_Messung_bank_bankneu.sql){:download="02-IDX_Messung_bank_bankneu.sql"}


!!! example "Aufgabe"

    Welchen Performance-Faktor erreichen Sie bei 10'000'000 Records? Dazu im 2. SQL das `LIMIT` setzen. Ansonsten werden 380 Mio Records generiert. Meine Hardware hat es geschluckt. Ihre? Wenn Sie Zweifel haben, beginnen Sie zuerst mit 10 Mio. Das sollte bei allen funktionieren.


