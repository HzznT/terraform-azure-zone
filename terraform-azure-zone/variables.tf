# variables.tf

# Define global variables that are used across modules and environments
variable "global_variable" {
  description = "Example global variable"
  type        = string
  default     = "global_value"
}

# You can add more global variables as needed
