# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.2"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a54b6fd0-015e-4f77-a123-3ba3e93a64d8"
  client_id       = "c58f588d-13dd-42a5-8975-366b9417bb67"
  client_secret   = "40a54fad-1ebe-40aa-ad07-e82e4f9e8230"
  tenant_id       = "4569bf05-cab0-4330-93f8-4e8563c99907"
}

resource "azurerm_resource_group" "rg" {
  name     = "Shiva_myTFResourceGroup2"
  location = "westus2"
  tags= {
      environment = "dev"
      source = "terraform"
  }
}
