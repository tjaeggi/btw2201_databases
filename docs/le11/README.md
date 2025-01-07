# LE11 - Timeseries Datenbanken

<figure markdown="span">
  ![Image title](../img/Zeitreihendaten.png){ width="600" }
  <figcaption></figcaption>
</figure>




# Eigenschaften von Timeseries-Datenbanken (TSDB)

Eine Zeitreihendatenbank (Time Series Database, TSDB) ist speziell für das Speichern und Analysieren von Zeitreihendaten optimiert

**allgemeine Eigenschaften** von Zeitreihendatenbanken:

* **Indizierung über Zeitstempel**: Zeitstempel sind der Hauptindex für die Daten.
* **Skalierbarkeit**: Sie können grosse Datenmengen verarbeiten, oft mehrere 100.000 Messwerte pro Sekunde.
* Keine starke Konsistenzgarantien: Stattdessen bieten sie Skalierbarkeit und schnelle Abfragen.
* Automatische **Datenreduktion**: Ältere Daten können automatisch gelöscht oder komprimiert werden.
* **Zeitbasierte Abfragen**: Abfragen basierend auf Zeitstempeln sind einfach und schnell







<figure markdown="span">
  ![Image title](../img/2024-12-08_21-08.png){ width="800" }
  <figcaption>Zeitreihendaten-Beispiel in InfluxDB</figcaption>
</figure>