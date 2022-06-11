# Configure the Azure provider
terraform {
  required_version = "~> 1.2.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.1"
    }
  }
}

provider "azurerm" {
   # skip provider rego because we are using a service principal with limited access to Azure
  skip_provider_registration = "true"   
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
