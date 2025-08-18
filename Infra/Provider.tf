terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }

backend "azurerm" {
    resource_group_name  = "bs-rg1"
    storage_account_name = "bsstg1920"
    container_name       = "bsgame"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {

  }
  subscription_id = "96a3eaff-d4cf-4222-9fe7-1622ab46f13e"
}
