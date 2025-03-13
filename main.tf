// TODO: 
// Szenario 1: nur eine Ressource , die schon "applieable" ist
// Aufgabe: Coffee ändern / duplizieren um eigene Kreation
// in locals vllt Liste schreiben, welche Ingredients es gibt
// und welche images

// Szenario 2a: Kaffeekreation modularisieren (cup_size, ...)
// Szenario 2b: Auswahl von 2 untersch. Kaffees über count

terraform {
  required_providers {
    hashicups = {
      source = "kokosnuss/hashicups"
    }
  }
  required_version = ">= 1.1.0"
}

provider "hashicups" {

}

locals {
  factor = var.cup_size == "M" ? 1 : var.cup_size == "S" ? 0.5 : 1.5
  milk   = var.vegan ? "Oat Milk" : "Milk"
}

resource "hashicups_coffee" "edu" {
  count      = var.coffee_type == "Atruvia Terraform Boost" ? 1 : 0
  name       = "Atruvia Terraform Boost"
  teaser     = "Double Espresso"
  collection = "New Arrivals"
  origin     = "Techdays 2025"
  price      = 150 * local.factor
  image      = "/terraform.png"
  ingredients = [{
    name     = "Espresso"
    quantity = 200 * local.factor
    unit     = "ml"
    },
    {
      name     = "Pumpkin Spice"
      quantity = 20 * local.factor
      unit     = "g"
    },
  ]
}
resource "hashicups_coffee" "edu2" {
  count      = var.coffee_type == "Atruvia Vault Boost" ? 1 : 0
  name       = "Atruvia Vault Boost"
  teaser     = "Double Espresso"
  collection = "New Arrivals"
  origin     = "Techdays 2025"
  price      = 150
  image      = "/terraform.png"
  ingredients = [{
    name     = "Espresso"
    quantity = 100 * local.factor
    unit     = "ml"
    },
    {
      name     = "Milk"
      quantity = 200 * local.factor
      unit     = "ml"
    },
  ]
}

variable "cup_size" {
  #   default = "M"
  type        = string
  description = "the size of your coffee"
  #   validation {
  #     // nur S - L
  #   }
}

variable "milk_type" {
  type    = string
  default = "cow"
  // validation only cow or cow / oatly
}

variable "vegan" {
  type    = bool
  default = false
}

variable "coffee_type" {
  type = string
  // validation: only Atruvia Terraform Boost or Atruvia Vault Boost
}

output "price" {
  value = 150 * local.factor
}
