# ICOtronic Software Tests

This repository describes how to execute the (software) test for [the STH](STH-Test.md) and [the STU](STU-Test.md) (in German). The remainder of this text will also be in German.

Eine Liste der hier [verwendeten Fachbegriffe](https://github.com/MyTooliT/Documentation/blob/master/General/Terms.md) und [Abkürzungen](https://github.com/MyTooliT/Documentation/blob/master/General/Akronyms.md) befindet sich [hier](https://github.com/MyTooliT/Documentation/blob/master/General).

## Erstellen der Dokumentation

Diese Dokumentation kann mittels [bookdown][] in diverse andere Formate umgewandelt werden. Im weiteren Text wird beschrieben wie man

- ein HTML-Dokument,
- ein PDF, und
- ein elektronisches Buch (EPUB)

aus den im Repo enthaltenen Dateien generieren kann. Voraussetzung dafür ist neben dem R-Paket [bookdown][] das [Build-System Make](https://en.wikipedia.org/wiki/Makefile). Diese Software sollte für alle der handelsüblichen Desktop-Betriebssysteme (Linux, macOS, Windows) verfügbar sein.

[bookdown]: https://bookdown.org

Bei den untenstehenden Shell-Kommandos wird davon ausgegangen, dass es sich beim aktuellen Verzeichnis um den obersten Ordner dieses Repositories handelt. Diese Kommandos werden auch verwendet um die Dokumentation mittels [GitHub Actions](https://github.com/MyTooliT/Testing/actions) zu erstellen. Die letzte Version dieser automatisch generierten Dokumentation befindet sich [hier](https://mytoolit.github.io/Testing).

### HTML

```sh
make html
```

### PDF

```sh
make pdf
```

### EPUB

```sh
make epub
```
