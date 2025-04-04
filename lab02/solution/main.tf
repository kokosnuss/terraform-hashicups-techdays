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
      name     = "Coffee"
      quantity = 200
      unit     = "ml"
    },
    {
      name     = "Oat Milk"
      quantity = 30
      unit     = "ml"
    },
  ]
}