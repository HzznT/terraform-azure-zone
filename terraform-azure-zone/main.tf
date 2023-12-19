module "networking" {
  source              = "./modules/networking"
  region              = "East US"  # Update with the correct variable name if needed
  vnet_address_spaces = ["10.0.0.0/16", "10.1.0.0/16"]  # Update with the correct variable name if needed
}

module "security" {
  source         = "./modules/security"
  security_tags  = { key = "value" }  # Adjust with your actual tags
}

module "compute" {
  source       = "./modules/compute"
  compute_tags = { key = "value" }  # Adjust with your actual tags
}

resource "azurerm_storage_account" "example" {
  name                     = "mystorageaccount"
  resource_group_name      = module.networking.rg_east.name
  location                 = module.networking.rg_east.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
