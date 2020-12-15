# STU-Test

## Test-Vorgang

1. Im ICOc-Repo `config.yaml` anpassen. Eventuell sind folgende Daten zu ändern:

   1. Seriennummer des Boards
      1. Seriennummer ermitteln: Steht im LCD des Programming-Boards ganz unten
      2. `STU` → `Programming Board` → `Serial Number` ändern
   2. Production Date auf Datum des PCB (`STU` → `Production Date`) (Optional)
   3. Operator-Name auf den eigenen Namen setzen (`Operator` → `Name`) (Optional)

2. `Test-STU` in Powershell ausführen:

   ```sh
   Test-STU -v
   ```

3. Test-Ergebnis ansehen

   - Testergebnis `OK`: gehe zu Schritt 4
   - Testergebnis `FAILED` oder `ERROR`: Fehlersuche

4. Nachdem alle Test erfolgreich abgeschlossen wurden: Fertig für Versand
