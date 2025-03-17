**Aufgabe: Kaffee Resource erstellen und anwenden**

1. **Erstellt eine neue Terraform-Konfigurationsdatei**:
   - Erstellt eine Datei namens `main.tf`.

2. **Definiert den Terraform-Block**:
   - Fügt folgenden Code in die `main.tf` Datei ein:

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

5. **Initialisiert das Terraform-Projekt**:
   - Führt den Befehl `terraform init` aus, um das Projekt zu initialisieren.

6. **Überprüft den Plan**:
   - Führt den Befehl `terraform plan` aus, um den Plan zu überprüfen und sicherzustellen, dass die Konfiguration korrekt ist.

7. **Wendet die Konfiguration an**:
   - Führt den Befehl `terraform apply` aus, um die Kaffee Resource zu erstellen.