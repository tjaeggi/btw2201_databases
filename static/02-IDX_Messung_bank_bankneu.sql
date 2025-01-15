/*
In der Tabelle bank haben wir 19514 Records. Mit einer Unterabfrage und einem CROSS JOIN
füllen wir die Tabelle bankneu mit sehr vielen Records.
Ein CROSS JOIN kombiniert jede Zeile von einer Tabelle mit jeder Zeile der anderen Tabelle.
Um sehr viele Daten zu erhalten kombinieren wir jede Zeile der Tabelle bank mit jeder anderen
Zeile derselben Tabelle und schreiben diese in die Tabelle bankneu. 

Wie das geht siehst du im folgenden SQL-Statement.

ACHTUNG:
Dies ergibt total 19514 x 19514 = 380'796'196 Records!
Damit Ihr Notebook nicht zusammenbricht, können Sie mit LIMIT die Recordanzahl begrenzen,
z. Bsp auf 10 Mio.
Damit können wir dann den Effekt eines INDEXES messbar machen. 

BEACHTE:
Mit SET profiling = 1; SQL Statements....; SHOW PROFILES können die Zeiten der SQL-Statements
und sehe genau, wieviel Zeit dafür benötigt wurde.

Unter Edit/Preferences/SQLEditor der Workbench:
Setze unter MySQL Session alle Zeiten auf 9000.
Damit können wir das Timeout etwas herauszögern, weil die folgenden
Operationen länger dauern als 30sec (Standardwert.)
*/



-- SCHRITT 1: Daten erzeugen mit CROSS JOIN und Tabelle bankneu befüllen

SET profiling =1;
INSERT INTO bankneu (bankid,bankleitzahl,bezeichnung,plz,ort)
  SELECT
    b1.bankid,
    b1.bankleitzahl,
    b1.bezeichnung,
    b1.plz,
    b1.ort
  FROM bank AS b1 CROSS JOIN bank AS b2;
  -- LIMIT 10000000;
  SHOW PROFILES;
  
  --------------------------------------------------
  -- Dauer bei mir für das Erstellen von 380 Mio Records: 978.63 Sekunden --> 16 Minuten
  --------------------------------------------------
  
-- SCHRITT 2: Wieviele Records sind jetzt in bankneu?   

SET profiling =1;
SELECT count(*) FROM bankneu;
SHOW PROFILES;

-- -> 380'796'196 Records, dauert 4.8 Sekunden


-- SCHRITT 3 :Abfrage eines Records mit Selektionskriterium auf das Nichtschlüsselattribut bankleitzahl
-- OHNE INDEX

SET profiling =1;    
SELECT SQL_NO_CACHE * FROM bankneu WHERE bankleitzahl=76061025;
SHOW PROFILES;
-- Dauer der Abfrage OHNE INDEX: 43.35806300 Sekunden


-- SCHRITT 4 : INDEX erstellen auf Attribut bankleitzahl
SET profiling =1;    
CREATE INDEX index_bankleitzahl
ON bankneu (bankleitzahl);
SHOW PROFILES;
-- dauert 304.01168550 Sekunden, rund 5 Minuten

-- SCHRITT 5: Abfrage eines Records mit Selektionskriterium auf das Nichtschlüsselattribut bankleitzahl
-- MIT INDEX

SET profiling =1;    
SELECT SQL_NO_CACHE * FROM bankneu WHERE bankleitzahl=76061025;
SHOW PROFILES;
-- Dauer der Abfrage MIT INDEX: 0.00542625 Sekunden, rund 5-6 Millisekunden


-- SCHRITT 6: Berechnung Abfragegeschwindigkeit ohne/mit INDEX
-- Faktor: 
-- 43.35806300 / 0.00542625 = 7990 x schneller mit INDEX!!!!!




