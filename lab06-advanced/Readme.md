### Aufgabe: Fortgeschrittene Erweiterung des Terraform-Moduls

#### Ziel:
Erweitere das erstellte Terraform-Modul um einen neuen Parameter, der die Bechergröße des Kaffees festlegt. Der Preis des Kaffees soll je nach Bechergröße variieren und im Output angezeigt werden.

#### Schritte:

1. **Parameter hinzufügen:**
   - Füge dem Modul einen neuen Parameter `cup_size` hinzu. Dieser Parameter soll die Bechergröße des Kaffees festlegen und die Werte `small`, `medium` und `large` akzeptieren.

2. **Preisberechnung:**
   - Implementiere eine Logik, die den Preis des Kaffees basierend auf der Bechergröße berechnet:
     - `small`: 100
     - `medium`: 200
     - `large`: 300

3. **Output anpassen:**
   - Passe den Output des Moduls so an, dass der entsprechende Preis angezeigt wird


#### Hinweise:
- Achte darauf, dass der Parameter `cup_size` nur die Werte `small`, `medium` und `large` akzeptiert.
- Teste dein Modul, um sicherzustellen, dass der Output korrekt ist.

Viel Erfolg bei der Umsetzung!