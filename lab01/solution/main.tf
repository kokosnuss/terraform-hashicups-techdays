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