resource "azurerm_resource_group" "RG-block1" {
  name     = "RG2"
  location = "east us"
}
# Storage Account
resource "azurerm_storage_account" "example" {
  name                     = "tabishstorageaccount01"   # Azure par globally unique hona chahiye
  resource_group_name      = azurerm_resource_group.RG-block1.name
  location                 = azurerm_resource_group.RG-block1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

