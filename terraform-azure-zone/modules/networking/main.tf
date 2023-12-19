# modules/networking/main.tf

variable "region" {
  description = "The Azure region for resources"
  type        = string
}

variable "vnet_address_spaces" {
  description = "The address space for the virtual networks"
  type        = list(string)
}

resource "azurerm_resource_group" "rg_east" {
  name     = "RG-East"
  location = var.region
}

resource "azurerm_virtual_network" "vnet_east" {
  name                = "vnet-east"
  address_space       = var.vnet_address_spaces
  location            = azurerm_resource_group.rg_east.location
  resource_group_name = azurerm_resource_group.rg_east.name
}
