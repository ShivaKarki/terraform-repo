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
  subscription_id = "0"
  client_id       = "00000000-0000-0000-0000-000000000000"
  client_secret   = 
  tenant_id       = "00000000-0000-0000-0000-000000000000
}

resource "azurerm_resource_group" "rg" {
  name     = "Shiva_myTFResourceGroup2"
  location = "westus2"
  tags= {
      environment = "dev"
      source = "terraform"
  }
}
