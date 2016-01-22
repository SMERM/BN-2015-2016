# Lezione del 22 gennaio 2016

* Riscrivere il programma `persona` e `studente` in:
  * `Java`
  * `processing`
* procedere sulla struttura di `processing` e programmazione relativa

## Java

* Ereditarietà singola:
  ```java
  public class Studente extends Persona {
  }
  ```
* `interfaces` classi astratte che servono a (far) implementare set di metodi
  in ciascuna classe:
  ```java
  public interface Anagrafica {
     public String nomeGet();
     public String cognomeGet();
     public void nomeSet(String s);
     public void cognomeSet(String s);
  }
  public class Persona implements Anagrafica {
     // implementa i metodi qui
  }
  ```

## Processing

* Com'è costruito `processing`
* metodi di base di `PApplet`: `setup()` e `draw()`
