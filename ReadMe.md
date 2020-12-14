# ICOtronic Software Tests

This repository describes how to execute the (software) test for [the STH](STH-Test.md) and [the STU](STU-Test.md) (in German). The remainder of this text will also be in German.

Eine Liste der hier [verwendeten Fachbegriffe](https://github.com/MyTooliT/Documentation/blob/master/General/Terms.md) und [Abkürzungen](https://github.com/MyTooliT/Documentation/blob/master/General/Akronyms.md) befindet sich [hier](https://github.com/MyTooliT/Documentation/blob/master/General).

# Vorbereitung

Damit der Test für eine STH oder STU durchgeführt werden kann benötigt man diverse Hardware und Software-Komponenten. Der nächste Teil des Texts beschreibt als erstes das Hardware-Setup und dann die Installation der benötigten Software.

## Hardware

![Arbeitsplatz](Pictures/Arbeitsplatz.jpg)

1. PC aufbauen und Peripherie (Maus, Tastatur, Bildschirm) anschließen
2. ESD-Matte aufbauen und anschließen
3. Stromversorgung für STU einrichten

   - Power-Injector (24V) (oder selten für 5V: Micro-USB)

   ![24V Vs. 5V](Pictures/24V%20Vs.%205V.jpg)

4. PEAK-CAN-Adapter an USB-Port anschließen
5. Programming-Board an USB-Port anschließen
6. Je nachdem ob man eine SHA/STH oder STU testen will unterscheidet sich welche Einheit man am Debug-Adapter des Programming-Boards anstecken muss:

   ![Programming Board](Pictures/Programming%20Board.jpg)

   - **STH-Test**: Debug-Adapter von Programming-Board (mittels Adapter Cable) **mit SHA/STH verbinden**

     ![SHA](Pictures/SHA.jpg)

   - **STU-Test**: Debug-Adapter von Programming-Board (mittels Adapter Cable) **mit STU verbinden**

     ![STU](Pictures/STU.jpg)

## Software

1. Windows 10 installieren

2. [Python (`3.6+`)](https://www.python.org/downloads/) installieren

   - Nicht vergessen **„Add Python to Path“** zu selektieren

3. [Simplicity Studio](https://www.silabs.com/products/development-tools/software/simplicity-studio) installieren (Simplicity Commander wird benötigt)

4. [Sourcetree](https://www.sourcetreeapp.com/) installieren

5. Git-Repositories in `Documents`-Ordner klonen

   1. [STH-Repo](https://github.com/MyTooliT/STH) klonen
   2. [STU-Repo](https://github.com/MyTooliT/STU) klonen
   3. [ICOc-Repo](https://github.com/MyTooliT/ICOc) klonen

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

9. Im STU-Ordner einen neuen Unter-Ordner namens `builds` erstellen und das [aktuelle Binary](https://github.com/MyTooliT/STU/releases) (.hex) dort speichern.

10. Nach diesen Schritten sollte die Ordner-Struktur in etwa so aussehen:

    ```
    Documents
    ├── ICOc
    ├── STH
    │   └── builds
    │        └── manufacturingImageSthv2.1.10.hex
    └── STU
        └── builds
             └── manufacturingImageStuv2.1.10.hex
    ```

11. Skript-Unterordner (üblicherweise `%USERPROFILE%\Documents\Projects\ICOc\Scripts`) zum User-Pfad (oder System-Pfad) hinzuzufügen. Eine Beschreibung wie das funktioniert gibt es z.B. [hier](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/). Danach kann man auf die Programme im `Scripts`-Ordner von einem beliebigen Ordner aus in der Powershell zugreifen.

12. Execution Policies ändern damit Powershell-Skripte ausgeführt werden können:

    ```sh
    Set-ExecutionPolicy RemoteSigned
    ```

13. Nachdem die Software-Komponenten nur erfolgreich installiert und eingerichtet wurden kann man mit

    - dem [STH-Test](STH-Test.md) oder
    - dem [STU-Test](STU-Test.md)

    fortfahren.
