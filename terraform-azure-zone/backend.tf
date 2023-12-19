# backend.tf

# Define backend configurations for remote state storage
terraform {
  backend "azurerm" {
    storage_account_name = "your_storage_account_name"
    container_name       = "your_storage_container_name"
    key                  = "terraform.tfstate"
  }
}
