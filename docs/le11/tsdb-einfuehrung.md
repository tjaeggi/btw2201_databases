# Eigenschaften TSDB und InfluxDB

Eine Zeitreihendatenbank (Time Series Database, TSDB) ist speziell für das Speichern und Analysieren von Zeitreihendaten optimiert

allgemeine Eigenschaften von Zeitreihendatenbanken:

* Indizierung über Zeitstempel: Zeitstempel sind der Hauptindex für die Daten.
* Skalierbarkeit: Sie können große Datenmengen verarbeiten, oft mehrere 100.000 Messwerte pro Sekunde.
* Keine starke Konsistenzgarantien: Stattdessen bieten sie Skalierbarkeit und schnelle Abfragen.
* Automatische Datenreduktion: Ältere Daten können automatisch gelöscht oder komprimiert werden.
* Zeitbasierte Abfragen: Abfragen basierend auf Zeitstempeln sind einfach und schnell

## Spezifische Eigenschaften von InfluxDB

InfluxDB ist eine beliebte Open-Source-Zeitreihendatenbank, die für die Verwaltung und Analyse von Zeitreihendaten entwickelt wurde. Hier sind einige ihrer spezifischen Eigenschaften:

* **Skalierbarkeit**: InfluxDB kann große Datenmengen effizient verarbeiten
* **Datenkompression**: Große Datenmengen können komprimiert werden, um Speicherplatz zu sparen.
* **Datenrichtlinien**: Es ermöglicht die Festlegung von Richtlinien, um genau zu bestimmen, wo bestimmte Daten gespeichert werden
* **Echtzeit-Datenverarbeitung**: InfluxDB kann Echtzeit- und parallel eintreffende Daten effizient speichern und analysieren.
* Flexibilität: Sie kann sowohl lokal als auch in der Cloud betrieben werden und unterstützt verschiedene Programmiersprachen.
* **Zeitreihen-Daten**: InfluxDB speichert Datenpunkte, die mit Zeitstempeln versehen sind, wie z.B. Temperaturmessungen, Leistungsmetriken oder Finanzdaten
* **Abfragesprache Flux**: InfluxDB verwendet eine eigene Abfragesprache namens InfluxQL für die Datenabfrage und Analyse. Ab InfluxDB 2.0 wird auch die neue Abfragesprache Flux unterstützt, die für ETL-Prozesse optimiert ist.
* **Datenmodell**: Die Daten werden in drei Hauptkomponenten gespeichert: Measurements, Fields und Tags. Measurements sind ähnlich wie Tabellen, Fields sind die Werte und Tags sind zusätzliche Metadaten, die die Daten kategorisieren2
* InfluxDB ist besonders nützlich für Anwendungen wie IoT, **Überwachung und Analyse von Sensordaten**

### InfluxDB - der Bucket
In InfluxDB ist ein *Bucket* eine grundlegende Datenspeichereinheit, die sowohl Zeitreihendaten als auch Metadaten speichert. Hier sind einige wesentliche Punkte:

* **Zeitbasierte Retention**
    * Buckets haben eine vordefinierte Aufbewahrungsrichtlinie (RetentionPolicy), die bestimmt, wie lange die Daten aufbewahrt werden, bevor sie automatisch gelöscht werden. Dies hilft, den Speicherbedarf zu verwalten.
* **Namespace für Daten**
    * Ein Bucket fungiert als Namespace für Messungen, Tags und Felder. Es hilft, die Daten organisatorisch zu trennen und zu verwalten.
* **Zugriffskontrolle**
    * Buckets ermöglichen es, granulare Zugriffskontrollen durchzusetzen. Das bedeutet, dass Benutzer unterschiedliche Berechtigungen für verschiedene Buckets haben können.
* **Datenanreicherung und Abfragen**
    * Daten können in Buckets geschrieben, abgerufen und analysiert werden, wobei InfluxDB's Abfragesprachen wie InfluxQL oder Flux verwendet werden.

**Beispiel:**

Angenommen, du hast Sensordaten, die Temperatur- und Feuchtigkeitsmessungen enthalten. Du könntest einen Bucket namens `sensor_data` erstellen, um diese Daten zu speichern:

```
from(bucket: "sensor_data")
  |> range(start: -1h)
  |> filter(fn: (r) => r._measurement == "temperature")
  |> mean()

```
In diesem Beispiel filterst du Daten aus dem sensor_data Bucket und berechnest den Durchschnitt der Temperaturmessungen der letzten Stunde.

Ein Bucket in InfluxDB ist ein zentraler Punkt, um Daten mit klaren Aufbewahrungsrichtlinien, Zugriffssteuerungen und einer strukturierten Organisation zu verwalten. Es ist ein grundlegender Baustein im Datenmanagement mit InfluxDB.

### InfluxDB - das Measurement (Messung)

In InfluxDB ist ein Measurement (Messung) ein logisches Konzept, das einer Tabelle in relationalen Datenbanken ähnelt.

**Konzept eines Measurements**

* **Sammlung von Datenpunkten**
    * Ein **Measurement** ist eine Sammlung von Datenpunkten, die bestimmte Werte über die Zeit speichern. Zum Beispiel könnten Temperaturmessungen, CPU-Nutzungsdaten oder Netzwerkbandbreite alle in separaten Measurements gespeichert werden.

* **Name des Measurements**
    * Jedes Measurement hat einen Namen, der es eindeutig identifiziert. Der Name sollte beschreibend sein und klar machen, welche Art von Daten darin gespeichert wird. Zum Beispiel: temperature, cpu_usage, network_traffic.

* **Felddaten und Tags**
    * **Fields** (Felder): Dies sind die tatsächlichen gemessenen Werte, z.B. die Temperatur in Grad Celsius oder die CPU-Auslastung in Prozent. Fields sind nicht indexiert und können numerisch, textuell oder boolesch sein.
    * **Tags**: Tags sind indexierte Metadaten, die Datenpunkte kategorisieren. Sie ermöglichen schnelle Abfragen und Gruppierungen. Ein Beispiel für Tags könnte der Standort eines Sensors oder der Hostname eines Servers sein.

**Beispiel für ein Measurement**

Angenommen, du hast ein Measurement namens temperature:

* Fields: value (die tatsächliche Temperaturmessung)
* Tags: location (z.B. "living_room", "kitchen")

Datenpunkte könnten so aussehen:

```
time                | location     | value
--------------------|--------------|------
2023-01-01T00:00:00Z| living_room  | 21.5
2023-01-01T00:05:00Z| kitchen      | 22.3

```

**Abfrage eines Measurements**

Hier ist ein Beispiel, wie du mit Flux-Daten aus einem Measurement abfragen könntest:

```
from(bucket: "my_bucket")
  |> range(start: -1d)
  |> filter(fn: (r) => r._measurement == "temperature")
  |> filter(fn: (r) => r.location == "living_room")
  |> mean()


```

Ein Measurement in InfluxDB ist eine zentrale Komponente, die eine Sammlung von Datenpunkten darstellt, die über die Zeit hinweg erfasst wurden. Es enthält Fields für die tatsächlichen Messwerte und Tags für die Kategorisierung und schnelle Abfrage von Daten.

