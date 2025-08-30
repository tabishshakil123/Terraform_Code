resource "azurerm_resource_group" "RG-block" {
  for_each = var.rg-value
  name     = each.value.name
  location = each.value.location
}
