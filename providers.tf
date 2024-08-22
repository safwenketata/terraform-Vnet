terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "aks_tf_rg"
    storage_account_name = "looyastorage"
    container_name       = "looyas"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
