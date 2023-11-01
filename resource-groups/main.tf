resource "azurerm_resource_group" "core" {
  name     = "core"
  location = "eastus"
}

resource "azurerm_resource_group" "storage" {
  name     = "storage"
  location = "eastus"
}