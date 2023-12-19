# modules/security/main.tf

variable "security_tags" {
  description = "Tags for security resources"
  type        = map(string)
}

# Define your security resources and configurations here
