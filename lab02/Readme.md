**Aufgabe: Kaffee Resource modifizieren**

1. **Öffne die bestehende `main.tf` Datei**:
   - Finde die Datei `main.tf`, die du in der ersten Aufgabe erstellt hast.

2. **Modifiziere die Kaffee Resource**:
   - Ändere die vorhandene `hashicups_coffee` Resource indem Du die Liste der `ingredients` änderst.
    Mögliche Werte sind:
      - 'Espresso'
      - 'Oatmilk'
      - 'Hot Water'
      - 'Pumpkin Spice'
      - 'Steamed Milk'
      - 'Coffee'

z.B.
```

resource "hashicups_coffee" "edu" {
  name  = "Atruvia Terraform Boost"
  image = "/terraform.png"
  price = 150
  ingredients = [
    {
      name     = "Coffee"
      quantity = 200
      unit     = "ml"
    },
    {
      name     = "Steamed Milk"
      quantity = 30
      unit     = "ml"
    },
  ]
}

```

3. **Überprüfe den Plan**:
   - Führe den Befehl `terraform plan` aus, um sicherzustellen, dass die Änderungen korrekt sind und keine Fehler auftreten.

4. **Wende die Änderungen an**:
   - Führe den Befehl `terraform apply` aus, um die modifizierte Kaffee Resource anzuwenden.

5. **Überprüfe die Anwendung**:
   - Stelle sicher, dass die Resource erfolgreich modifiziert wurde und überprüfe die Ausgabe.
