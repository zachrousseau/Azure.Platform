resource "azurerm_resource_group" "eastus-vm" {
  name     = "eastus-vm"
  location = "eastus"
}

resource "azurerm_network_security_group" "vm-nsg" {
  name                = "vm-nsg"
  location            = local.location.eastus
  resource_group_name = azurerm_resource_group.eastus-vm.name

  security_rule {
    name                       = "test1234"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

}