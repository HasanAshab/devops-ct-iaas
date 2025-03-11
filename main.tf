terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "portfolio-prod-centralindia-sampleapi-RG"
  location = "Central India"
}


resource "azurerm_virtual_machine" "vm" {
  name = "portfolio-prod-centralindia-sampleapi"
  location = "Central India"

}
