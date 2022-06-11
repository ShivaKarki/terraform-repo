# Configure the Azure provider
terraform {
  required_version = "~> 1.2.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.2"
    }
  }
}

provider "azurerm" {
  
  # skip provider rego because we are using a service principal with limited access to Azure
  skip_provider_registration = "true"   
  
  subscription_id   = var.AZURE_AD_CLIENT_ID
  tesubscription_id   = "a54b6fd0-015e-4f77-a123-3ba3e93a64d8"
	tenant_id         = "4569bf05-cab0-4330-93f8-4e8563c99907"
	client_id         = "ea020ec2-a950-4418-a353-2d70a8aedd9e"
	client_secret     = "bMu8Q~iGJv3x0MKFBr055qSme6LDlebzPCx2vb6o"
  
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
