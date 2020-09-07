# STH Tests

## Software

1. Windows 10 installieren

2. [Python (`3.6+`)](https://www.python.org/downloads/) installieren

   1. **Add Python to Path!**

3. Simplicity Studio installieren (Commander wird benötigt)

4. [Sourcetree](https://www.sourcetreeapp.com/) installieren

5. Git Repo klonen

   1. STH-Repo in Documents
   2. ICOc-Repo in Documents

6. [Peakcan Basic API](https://www.peak-system.com/PCAN-USB-FD.365.0.html) installieren

7. Script zur installation der Libarys im ICOc-Repo ausführen

   1. In ordner gehen
   2. hShift+STRG+Rechtsklick
   3. Powershell hier öffnen
   4. Eingeben: pip install -r requirements.txt

8. In STH einen Ordner `builds` erstellen und die OTA und .hex dateien downloaden

9. im ICOc-Repo das config.yaml anpassen

   1. port (`chgport` in cmd to see which one it is)
   2. Serialnumber of developer board
   3. Name des PCB ändern
   4. Production Date auf datum (optional)
   5. Operator-Name auf eigenen wechseln (optional)

10. Skript-Unterordner (könnte bei dir z.B. `C:\Users\clemens\Documents\ICOc\Scripts` sein) zum User-Pfad (oder System-Pfad) hinzuzufügen. Eine Beschreibung wie das funktioniert gibt es z.B. [hier](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/).

    Der Vorteil davon ist, dass du dann auf die Programme im `Scripts`-Ordner von überall zugreifen kannst. Du kannst danach also z.B. durch Eingabe von

    Test-STH

    in der Powershell direkt die Tests starten.

11. Execution_Policies ändern damit scripte funktionieren (`Set-ExecutionPolicy RemoteSigned`) (ADMINMODE)

12. Test-STH ausführen
