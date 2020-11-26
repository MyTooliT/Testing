# STH Tests

## Hardware

![Arbeitsplatz](Pictures/Arbeitsplatz.jpg)

1. PC aufbauen und Peripherie (Maus, Tastatur, Bildschirm) anschließen
2. ESD-Matte aufbauen und anschließen
3. Stromversorgung für STU einrichten

   - Power-Injector (24V) (oder selten für 5V: Micro-USB)

   ![24V Vs. 5V](Pictures/24V%20Vs.%205V.jpg)

4. PEAK-CAN-Adapter an USB-Port anschließen
5. Programming-Board an USB-Port anschließen
6. Debug-Adapter von Programming-Board (mittels Adapter Cable) mit SHA/STH verbinden

   ![Programming Board](Pictures/Programming%20Board.jpg)

   ![SHA](Pictures/SHA.jpg)

## Software

1. Windows 10 installieren

2. [Python (`3.6+`)](https://www.python.org/downloads/) installieren

   - Nicht vergessen **„Add Python to Path“** zu selektieren

3. [Simplicity Studio](https://www.silabs.com/products/development-tools/software/simplicity-studio) installieren (Simplicity Commander wird benötigt)

4. [Sourcetree](https://www.sourcetreeapp.com/) installieren

5. Git-Repositories in `Documents`-Ordner klonen

   1. [STH-Repo](https://github.com/MyTooliT/ICOc) klonen
   2. [ICOc-Repo](https://github.com/MyTooliT/STH) klonen

6. [PEAK-System Gerätetreiber für Windows](https://www.peak-system.com/PCAN-USB-FD.365.0.html) installieren

7. Skript zur Installation der benötigten Python-Pakete im `ICOc`-Repo ausführen

   1. Powershell im Ordner `ICOc` öffnen
      1. <kbd>Shift</kbd> + <kbd>Ctrl</kbd> + Rechts-Click im Explorer
      2. „Powershell hier öffnen“ auswählen
   2. Den folgenden Befehl ausführen:

   ```sh
   pip install -r requirements.txt
   ```

8. Im STH-Ordner einen neuen Unter-Ordner namens `builds` erstellen und das [aktuelle Binary](https://github.com/MyTooliT/STH/releases) (.hex) dort speichern.

   Nach diesen Schritten sollte die Ordner-Struktur in etwa so aussehen:

   ```
   Documents
   ├── ICOc
   └── STH
       └── builds
             └── manufacturingImageSthv2.1.10.hex
   ```

9. Skript-Unterordner (üblicherweise `%USERPROFILE%\Documents\Projects\ICOc\Scripts`) zum User-Pfad (oder System-Pfad) hinzuzufügen. Eine Beschreibung wie das funktioniert gibt es z.B. [hier](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/). Danach kann man auf die Programme im `Scripts`-Ordner von einem beliebigen Ordner aus in der Powershell zugreifen.

10. Execution Policies ändern damit Powershell-Skripte ausgeführt werden können

    ```sh
    Set-ExecutionPolicy RemoteSigned
    ```

## Test-Vorgang

1. Schalter an Programming-Board in Position „AEM“ schieben (Stromversorgung über Programming-Board)
2. Im ICOc-Repo `config.yaml` anpassen. Eventuell sind folgende Daten zu ändern:

   1. Seriennummer des Boards
      1. Seriennummer ermitteln: Steht im LCD des Programming-Boards ganz unten
      2. `STH` → `Programming Board` → `Serial Number` ändern
   2. Name des PCB (`STH` → `Name`)
      - Neue Boards sollten üblicherweise den Namen „Tanja“ haben
   3. Verwendeter Beschleunigungssensor (`STH` → `Acceleration Sensor` → `Sensor`) (Optional): Welcher Sensor verwendet wird lässt sich üblicherweise an Hand eines Sticker an der Rückseite des PCB ermitteln. Ein Sticker mit der Aufschrift

      - `1` weißt dabei auf den Sensor `ADXL1001` hin, während
      - `2` auf den Sensor `ADXL1002` verweist.

      Falls kein Sticker vorhanden ist, kann eine Lupe oder die Lupenfunktion eines Mobiltelefons recht hilfreich sein um die Identifikation auf dem Sensor zu lesen.

   4. Production Date auf Datum des PCB (`STH` → `Production Date`) (Optional)
   5. Operator-Name auf den eigenen Namen setzen (`Operator` → `Name`) (Optional)

3. `Test-STH` in Powershell ausführen:

   ```sh
   Test-STH -v
   ```

4. Test-Ergebnis ansehen

   - Testergebnis `OK`: gehe zu Schritt 5
   - Testergebnis `FAILED` oder `ERROR`: Fehlersuche

5. Freigegeben für Einbau
6. Test für eingebaute SHA (STH) und vergossene STH wiederholen

   - Schalter an Programming-Board in Position „USB“ schieben

7. Nachdem alle Test erfolgreich abgeschlossen wurden: Fertig für Versand
