# modules/networking/outputs.tf

output "vnet_east_id" {
  value = azurerm_virtual_network.vnet_east.id
}
