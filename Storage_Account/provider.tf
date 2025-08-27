terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "6f8a9d8d-6af1-425c-89e7-b2a15a847fb6"
  tenant_id       = "13708c27-9a3a-44c7-b67c-1ac483408880"
}
