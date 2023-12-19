# modules/compute/main.tf

variable "compute_tags" {
  description = "Tags for compute resources"
  type        = map(string)
}

# Define your compute resources and configurations here
