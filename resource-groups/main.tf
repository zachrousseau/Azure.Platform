resource "azurerm_resource_group" "core" {
  name     = "core"
  location = "eastus"
}

resource "azurerm_resource_group" "storage" {
  name     = "storage"
  location = "eastus"
}

resource "azurerm_resource_group" "e-vm" {
  name     = "e-vm"
  location = "eastus"
}