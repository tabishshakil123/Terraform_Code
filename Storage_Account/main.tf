resource "azurerm_resource_group" "RG-block" {
  name     = "RG2"
  location = "east us"
}
# Storage Account
resource "azurerm_storage_account" "storage-block" {
  name                     = "tabishstorageaccount01"   # Azure par globally unique hona chahiye
  resource_group_name      = azurerm_resource_group.RG-block.name
  location                 = azurerm_resource_group.RG-block.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  
}

resource "azurerm_storage_container" "container-block" {
  name                  = "terraformcontainer"
  storage_account_id    = azurerm_storage_account.storage-block.id
  container_access_type = "private"
}