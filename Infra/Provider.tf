terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }

backend "azurerm" {
    resource_group_name  = "bs-rg1"
    storage_account_name = "bsstg1947"
    container_name       = "bscontainer1"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {

  }
  subscription_id = "4666927b-089e-4cfc-8592-146c2e04657e"
}
