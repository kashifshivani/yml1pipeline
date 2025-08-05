terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg_kash1"
    storage_account_name = "kashhamza11"
    container_name       = "mycont"
    key                  = "new.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = "027bc23a-8a9d-41f9-b17f-65bf7ca72059"
}
