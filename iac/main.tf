# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "Shiva_myTFResourceGroup2"
  location = "westus2"
  tags= {
      environment = "dev"
      source = "terraform"
  }
}
