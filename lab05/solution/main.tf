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
  strong = false
}

output "price" {
   value = "Preis: ${module.my_coffee.price}"
}