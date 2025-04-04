terraform {
  required_providers {
    hashicups = {
      source = "kokosnuss/hashicups"

    }
  }
  required_version = ">= 1.1.0"
}

locals {
  factor = var.cup_size=="medium" ? 1 : var.cup_size=="large" ? 1.5 : 0.5
}

resource "hashicups_coffee" "my_custom_coffee" {
  name       = "Consul Brew"
  teaser     = "Summer bodies are made in winter"
  collection = "Fitline"
  price      = 200 * local.factor
  image      = "/consul.png"
  ingredients = [
    {
      name     = var.strong ? "Espresso" : "Coffee"
      quantity = 50 * local.factor
      unit     = "ml"
    },
    {
      name     = "Hot Water"
      quantity = 50 * local.factor
      unit     = "ml"
    },
  ]
}