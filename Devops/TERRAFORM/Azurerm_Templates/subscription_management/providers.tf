terraform {

  required_version = ">=0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.28.0"
    }
  }
  backend "azurerm" {}
}

# Azure Resource Manager Provider
provider "azurerm" {
  features {}
}

# Azure AD Provider
provider "azuread" {
}
