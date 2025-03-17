**Aufgabe: Eigene Kaffee-Kreation erstellen**

1. **Öffne die Datei `main.tf`**:

2. **Erstelle eine eigene Kaffee-Kreation**:
   - Füge eine neue Resource für deine eigene Kaffee-Kreation hinzu. Du kannst dich dabei aus der Liste der bekannten Zutaten bedienen. Hier ist ein Beispiel, wie du deine eigene Kreation definieren könntest:

```
resource "hashicups_coffee" "my_custom_coffee" {
  name       = "<Dein Name>"
  teaser     = "<Dein Teaser>"
  collection = "<Deine Collection>"
  price      = <Dein Preis>
  image      = "/terraform.png"
  ingredients = [
    # Liste Deiner Zutagen
  ]
}
```

3. **Überprüfe den Plan**:
   - Führe den Befehl `terraform plan` aus, um sicherzustellen, dass die neue Resource korrekt definiert ist und keine Fehler auftreten.

4. **Wende die Konfiguration an**:
   - Führe den Befehl `terraform apply` aus, um deine eigene Kaffee-Kreation zu erstellen.