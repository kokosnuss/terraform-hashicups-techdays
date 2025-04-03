**Aufgabe: Modul um den Parameter „strong“ erweitern**

1. **Die Datei `variables.tf` im Modulverzeichnis erstellen**:
   - Erstelle eine Datei namens `variables.tf` im Verzeichnis `coffee_module`
   - Füge den folgenden Code hinzu, um den Input-Parameter `strong` zu definieren:

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
  name       = "Consul Brew"
  teaser     = "Summer bodies are made in Winter"
  collection = "Fitline"
  price      = 230
  image      = "/consul.png"
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

3. **Definiere eine Output-Variable des Moduls**:
   - Erstelle eine Datei namens `outputs.tf` im Verzeichnis `coffee_module`
   - Definiere einen Output und verweise dabei auf den Preis der Kaffeespezialität:

```
output "price" {
  value = hashicups_coffee.my_custom_coffee.price
}
```


4. **Verwende das Modul in der Hauptkonfiguration**:
   - Öffne die Datei `main.tf` im Hauptverzeichnis deines Projekts.
   

```
module "my_coffee" {
  source  = "./coffee_module"
  strong = false
}

output "price" {
   value = module.my_coffee.price
}
```

5. **Re-Initialisiere das Terraform-Projekt**:
   - Führe den Befehl `terraform init` aus, um das Projekt zu initialisieren.

6. **Überprüfe den Plan**:
   - Führe den Befehl `terraform plan` aus, um sicherzustellen, dass das Modul korrekt definiert und verwendet wird.

7. **Wende die Konfiguration an**:
   - Führe den Befehl `terraform apply` aus, um die Änderungen anzuwenden.

8. **Überprüfe die Anwendung**:
   - Stelle sicher, dass die Resource erfolgreich erstellt wurde und überprüfe die Ausgabe.

9. **Räume den Workspace wieder auf**:
   - Führe dafür folgenden befehl aus: `terraform destroy`
