# STH Tests

## Software

1. Windows 10 installieren

2. [Python (`3.6+`)](https://www.python.org/downloads/) installieren

   - Nicht vergessen **„Add Python to Path“** zu selektieren

3. [Simplicity Studio](https://www.silabs.com/products/development-tools/software/simplicity-studio) installieren (Simplicity Commander wird benötigt)

4. [Sourcetree](https://www.sourcetreeapp.com/) installieren

5. Git-Repositories in `Documents`-Ordner klonen

   1. [STH-Repo](https://github.com/MyTooliT/ICOc) klonen
   2. [ICOc-Repo](https://github.com/MyTooliT/STH) klonen

6. [Peakcan Basic API](https://www.peak-system.com/PCAN-USB-FD.365.0.html) installieren

7. Skript zur Installation der benötigten Python-Pakete im `ICOc`-Repo ausführen

   1. Powershell im Ordner `ICOc` öffnen
      1. <kbd>Shift</kbd> + <kbd>Ctrl</kbd> + Rechts-Click im Explorer
      2. „Powershell hier öffnen“ auswählen
   2. Den folgenden Befehl ausführen:

   ```sh
   pip install -r requirements.txt
   ```

8. Im STH-Ordner einen neuen Unter-Ordner namens `builds` erstellen und die [aktuellen Binaries](https://github.com/MyTooliT/STH/releases) dort speichern

   1. [Flash-Image (`.hex`)](https://github.com/MyTooliT/STH/releases/download/2.1.10/manufacturingImageSthv2.1.10.hex)
   2. [OTA-File (`.gbl`)](https://github.com/MyTooliT/STH/releases/download/2.1.10/OtaServer.gbl)

9. Im ICOc-Repo `config.yaml` anpassen. Eventuell sind folgende Daten zu ändern:

   1. Port
      1. `chgport` in Eingabeaufforderung (Powershell) eingeben um zu sehen welcher Port verwendet werden soll
      2. `STH` → `Programming Board` → `COM Interface` ändern
   2. Seriennummer des Boards
      1. Seriennummer ermitteln: Steht im LCD des Programming-Boards ganz unten
      2. `STH` → `Programming Board` → `Serial Number` ändern
   3. Name des PCB (`STH` → `Name`)
   4. Production Date auf Datum des PCB (`STH` → `Production Date`) (Optional)
   5. Operator-Name auf den eigenen Namen setzen (`Operator` → `Name`) (Optional)

10. Skript-Unterordner (üblicherweise `%USERPROFILE%\Documents\Projects\ICOc\Scripts`) zum User-Pfad (oder System-Pfad) hinzuzufügen. Eine Beschreibung wie das funktioniert gibt es z.B. [hier](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/). Danach kann man auf die Programme im `Scripts`-Ordner von einem beliebigen Ordner aus in der Powershell zugreifen.

11. Execution Policies ändern damit Powershell-Skripte ausgeführt werden können

    ```sh
    Set-ExecutionPolicy RemoteSigned
    ```

12. `Test-STH` ausführen:

    ```sh
    Test-STH -v
    ```
