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
         ARM_CLIENT_ID: "c58f588d-13dd-42a5-8975-366b9417bb67"
         ARM_CLIENT_SECRET:  "PYr8Q~71MYuZ8-Jbk3WSNYy-LDoqVHYQpqKe2dhm"
         ARM_SUBSCRIPTION_ID: "a54b6fd0-015e-4f77-a123-3ba3e93a64d8"
         ARM_TENANT_ID: "4569bf05-cab0-4330-93f8-4e8563c99907"
  features {}
  subscription_id = "a54b6fd0-015e-4f77-a123-3ba3e93a64d8"
  client_id       = "c58f588d-13dd-42a5-8975-366b9417bb67"
  client_secret   = "PYr8Q~71MYuZ8-Jbk3WSNYy-LDoqVHYQpqKe2dhm"
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
