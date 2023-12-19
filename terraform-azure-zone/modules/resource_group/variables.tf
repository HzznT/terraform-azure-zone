# Resource Group Module - variables.tf

variable "name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location/region where the resource group is created"
  type        = string
}
