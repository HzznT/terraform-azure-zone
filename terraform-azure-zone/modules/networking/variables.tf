variable "region" {
  description = "The region where resources should be created"
  type        = string
}

variable "vnet_address_spaces" {
  description = "The address spaces for the virtual network"
  type        = list(string)
}
