# STH-Test

## Test-Vorgang

1. Schalter an Programming-Board in Position „AEM“ schieben (Stromversorgung über Programming-Board)
2. Die [Konfigurationswerte](https://mytoolit.github.io/ICOc/#changing-configuration-values) anpassen

   Um die Benutzer-Konfigurationsdatei zu öffnen kann man folgenden Befehl verwenden:

   ```sh
   icon config
   ```

   Eventuell sind folgende Daten in der Konfiguration zu ändern:

   1. Seriennummer des Boards
      1. Seriennummer ermitteln: Steht im LCD des Programming-Boards ganz unten
      2. `sth` → `programming board` → `serial number` ändern
   2. Name des PCB (`sth` → `name`)
      - Neue Boards sollten üblicherweise den Namen „Tanja“ haben
   3. Verwendeter Beschleunigungssensor (`sth` → `acceleration sensor` → `sensor`) (Optional): Welcher Sensor verwendet wird lässt sich üblicherweise an Hand eines Sticker an der Rückseite des PCB ermitteln. Ein Sticker mit der Aufschrift

      - `1` weißt dabei auf den Sensor `ADXL1001` hin, während
      - `2` auf den Sensor `ADXL1002` verweist.

      Falls kein Sticker vorhanden ist, kann eine Lupe oder die Lupenfunktion eines Mobiltelefons recht hilfreich sein um die Identifikation auf dem Sensor zu lesen.

   4. Production Date auf Datum des PCB (`sth` → `production date`) (Optional)
   5. Operator-Name auf den eigenen Namen setzen (`operator` → `name`) (Optional)

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
