**Aufgabe: Kaffee-Kreation in ein Terraform Modul verlagern**

1. **Erstelle ein neues Verzeichnis für das Modul**:
   - Erstelle ein Verzeichnis namens `coffee_module`.

2. **Erstelle die Moduldatei**:
   - Erstelle eine Datei namens `main.tf` im Verzeichnis `coffee_module`.

3. **Definiert den Terraform-Block**:
   - Fügt folgenden Code in die `coffee_module/main.tf` Datei ein:

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

4. **Füge Deine Kaffee-Creation**
   - Füge Deinen `hashicups_coffee` Code aus lab03 in die `coffee_module/main.tf` Datei ein, um die Kaffee-Kreation als Modul zu definieren:
     z.B:


```
resource "hashicups_coffee" "my_custom_coffee" {
  name       = "Consul Brew"
  teaser     = "Summer bodies are made in Winter"
  collection = "Fitline"
  price      = 230
  image      = "/consul.png"
  ingredients = [
    {
      name     = "Espresso"
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
   - Ersetze den Inhalt der Datei mit dem folgenden Code:

```
terraform {
  required_providers {
    hashicups = {
      source = "kokosnuss/hashicups"
    }
  }
  required_version = ">= 1.1.0"
}

provider "hashicups" {
  host = "http://localhost:9090"
}

module "my_coffee" {
  source  = "./coffee_module"
}
```
4. **[WICHTIG] Re-Initialisiere das Terraform-Projekt**:
   - Führe den Befehl `terraform init` aus, um das Projekt zu initialisieren.

5. **Überprüfe den Plan**:
   - Führe den Befehl `terraform plan` aus, um sicherzustellen, dass das Modul korrekt definiert und verwendet wird.

6. **Wende die Konfiguration an**:
   - Führe den Befehl `terraform apply` aus, um die Kaffee-Kreation als Modul anzuwenden.

7. **Räume den Workspace wieder auf**:
   - Führe dafür folgenden befehl aus: `terraform destroy`