# STH-Test

## Test-Vorgang

1. Schalter an Programming-Board in Position „AEM“ schieben (Stromversorgung über Programming-Board)
2. Im ICOc-Repo `config.yaml` anpassen. Eventuell sind folgende Daten zu ändern:

   1. Seriennummer des Boards
      1. Seriennummer ermitteln: Steht im LCD des Programming-Boards ganz unten
      2. `STH` → `PROGRAMMING BOARD` → `SERIAL NUMBER` ändern
   2. Name des PCB (`STH` → `NAME`)
      - Neue Boards sollten üblicherweise den Namen „Tanja“ haben
   3. Verwendeter Beschleunigungssensor (`STH` → `ACCELERATION SENSOR` → `SENSOR`) (Optional): Welcher Sensor verwendet wird lässt sich üblicherweise an Hand eines Sticker an der Rückseite des PCB ermitteln. Ein Sticker mit der Aufschrift

      - `1` weißt dabei auf den Sensor `ADXL1001` hin, während
      - `2` auf den Sensor `ADXL1002` verweist.

      Falls kein Sticker vorhanden ist, kann eine Lupe oder die Lupenfunktion eines Mobiltelefons recht hilfreich sein um die Identifikation auf dem Sensor zu lesen.

   4. Production Date auf Datum des PCB (`STH` → `PRODUCTION DATE`) (Optional)
   5. Operator-Name auf den eigenen Namen setzen (`OPERATOR` → `NAME`) (Optional)

3. `test-sth` in Powershell ausführen:

   ```sh
   test-sth -v
   ```

4. Test-Ergebnis ansehen

   - Testergebnis `OK`: gehe zu Schritt 5
   - Testergebnis `FAILED` oder `ERROR`: Fehlersuche

5. Freigegeben für Einbau
6. Test für eingebaute SHA (STH) und vergossene STH wiederholen

   - Schalter an Programming-Board in Position „USB“ schieben

7. Nachdem alle Test erfolgreich abgeschlossen wurden: Fertig für Versand
