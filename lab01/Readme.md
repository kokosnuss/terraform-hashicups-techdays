**Aufgabe: Kaffee Resource erstellen und anwenden**

0. **Stelle sicher, dass du dich im richtigen Verzeichnis befindest**:
   - `cd main`

1. **Erstelle eine neue Terraform-Konfigurationsdatei**:
   - Erstelle in diesem Verzeichnis eine Datei namens `main.tf`.

2. **Definiere den Terraform-Block**:
   - Füge folgenden Code in die `main.tf` Datei ein:

```hcl
terraform {
  required_providers {
    hashicups = {
      source = "kokosnuss/hashicups"
    }
  }
  required_version = ">= 1.1.0"
}
```

3. **Definiert den Provider-Block**:
   - Fügt folgenden Code in die `main.tf` Datei ein:

```
provider "hashicups" {
    host = "http://localhost:9090"
}
```
4. **Definiert die Coffee-Resource**:
   - Fügt dafür folgenden Code in die `main.tf` Datei ein:

```
resource "hashicups_coffee" "edu" {

  name  = "Atruvia Terraform Boost"
  image = "/terraform.png"
  price = 150
  ingredients = [
    {
      name     = "Espresso"
      quantity = 200
      unit     = "ml"
    },
    {
      name     = "Pumpkin Spice"
      quantity = 20
      unit     = "g"
    },
  ]
}
```

5. **Initialisiere das Terraform-Projekt**:
   - Führe den Befehl `terraform init` aus, um das Projekt zu initialisieren.

6. **Überprüfe den Plan**:
   - Führe den Befehl `terraform plan` aus, um den Plan zu überprüfen und sicherzustellen, dass die Konfiguration korrekt ist.

7. **Wende die Konfiguration an**:
   - Führe den Befehl `terraform apply` aus, um die Kaffee Resource zu erstellen.

8. **Räume den Workspace wieder auf**:
   - Führe dafür folgenden befehl aus: `terraform destroy`