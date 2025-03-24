terraform {
  required_providers {
    hashicups = {
      source = "kokosnuss/hashicups"

    }
  }
  required_version = ">= 1.1.0"
}

resource "hashicups_coffee" "my_custom_coffee" {
  name       = "Terraform Brew"
  teaser     = "Summer bodies are made in winter"
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