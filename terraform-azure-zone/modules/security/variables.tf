# modules/security/variables.tf

variable "security_tags" {
  description = "Tags for security resources"
  type        = map(string)
}
