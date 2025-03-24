**Aufgabe: Modul um den Parameter „strong“ erweitern**

1. **Die Datei `variables.tf` im Modulverzeichnis bearbeiten**:
   - Erstelle eine Datei namens `variables.tf` im Verzeichnis `coffee_module`, falls sie noch nicht existiert.
   - Füge den folgenden Code hinzu, um den Parameter `strong` zu definieren:

```
variable "strong" {
  description = "Soll der Kaffee stark sein?"
  type        = bool
  default     = false
}
```

2. **Modifiziere die `main.tf` Datei im Modulverzeichnis**:
   - Öffne die Datei `main.tf` im Verzeichnis `coffee_module`.
   - Passe die Resource an, um den neuen Parameter zu verwenden:

```
resource "hashicups_coffee" "my_custom_coffee" {
  name       = "Terraform Brew"
  teaser     = "Summer bodies are made in Winter"
  collection = "Fitline"
  price      = 230
  image      = "/terraform.png"
  ingredients = [
    {
      name     = var.strong ? "Espresso" : "Coffee"
      quantity = 50
      unit     = "ml"
    },
    {
      name     = "Hot Water"
      quantity = 50
      unit     = "ml"
    },
  ]
}
```

3. **Verwende das Modul in der Hauptkonfiguration**:
   - Öffne die Datei `main.tf` im Hauptverzeichnis deines Projekts.
   - Füge den Parameter `strong` hinzu, wenn du das Modul aufrufst:

```hcl
module "my_coffee" {
  source  = "./coffee_module"
  strong = false
}
```

4. **Re-Initialisiere das Terraform-Projekt**:
   - Führe den Befehl `terraform init` aus, um das Projekt zu initialisieren.

5. **Überprüfe den Plan**:
   - Führe den Befehl `terraform plan` aus, um sicherzustellen, dass das Modul korrekt definiert und verwendet wird.

6. **Wende die Konfiguration an**:
   - Führe den Befehl `terraform apply` aus, um die Änderungen anzuwenden.

7. **Überprüfe die Anwendung**:
   - Stelle sicher, dass die Resource erfolgreich erstellt wurde und überprüfe die Ausgabe.
