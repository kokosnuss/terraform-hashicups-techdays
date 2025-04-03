**Aufgabe: Eigene Kaffee-Kreation erstellen**

1. **Öffne die Datei `main.tf`**:

2. **Erstelle eine eigene Kaffee-Kreation**:
   - Füge eine neue Resource für deine eigene Kaffee-Kreation hinzu. Du kannst dich dabei aus der Liste der bekannten Zutaten bedienen. Hier ist ein Beispiel, wie du deine eigene Kreation definieren könntest:

    Mögliche Werte für Ingredients sind:
      - 'Espresso'
      - 'Oat Milk'
      - 'Hot Water'
      - 'Pumpkin Spice'
      - 'Steamed Milk'
      - 'Coffee'

   Mögliche Werte für Images sind:
      - boundary.png
      - consul.png
      - hashicorp.png
      - nomad.png
      - packer.png
      - terraform.png
      - vagrant.png
      - vault.png
      - waypoint.png

```
resource "hashicups_coffee" "my_custom_coffee" {
  name       = "<Dein Name>"
  teaser     = "<Dein Teaser>"
  collection = "<Deine Collection>"
  price      = <Dein Preis>
  image      = "/terraform.png"
  ingredients = [
    # Liste Deiner Zutaten
  ]
}
```

3. **Überprüfe den Plan**:
   - Führe den Befehl `terraform plan` aus, um sicherzustellen, dass die neue Resource korrekt definiert ist und keine Fehler auftreten.

4. **Wende die Konfiguration an**:
   - Führe den Befehl `terraform apply` aus, um deine eigene Kaffee-Kreation zu erstellen.

5. **Räume den Workspace wieder auf**:
   - Führe dafür folgenden befehl aus: `terraform destroy`