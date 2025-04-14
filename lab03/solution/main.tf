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
      name     = "Steamed Milk"
      quantity = 30
      unit     = "ml"
    },
  ]
}

resource "hashicups_coffee" "my_custom_coffee" {
  name       = "Terraform Brew"
  teaser     = "Summer bodies are made in Winter"
  collection = "Fitline"
  price      = 230
  image      = "/techdays.png"
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
