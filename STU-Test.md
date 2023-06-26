# STU-Test

## Test-Vorgang

1. Die [Konfigurationswerte](https://mytoolit.github.io/ICOc/#changing-configuration-values) anpassen

   Um die Benutzer-Konfigurationsdatei zu öffnen kann man folgenden Befehl verwenden:

   ```sh
   icon config
   ```

   Eventuell sind folgende Daten in der Konfiguration zu ändern:

   1. Seriennummer des Boards
      1. Seriennummer ermitteln: Steht im LCD des Programming-Boards ganz unten
      2. `stu` → `programming board` → `serial number` ändern
   2. Production Date auf Datum des PCB (`stu` → `production date`) (Optional)
   3. Operator-Name auf den eigenen Namen setzen (`operator` → `name`) (Optional)

2. `test-stu` in Powershell ausführen:

   ```sh
   test-stu -v
   ```

3. Test-Ergebnis ansehen

   - Testergebnis `OK`: gehe zu Schritt 4
   - Testergebnis `FAILED` oder `ERROR`: Fehlersuche

4. Nachdem alle Test erfolgreich abgeschlossen wurden: Fertig für Versand
