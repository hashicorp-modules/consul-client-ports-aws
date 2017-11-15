variable "provision" {
  default     = "true"
  description = "Override to prevent provisioning resources in this module, defaults to \"true\"."
}

variable "name" {
  default     = "consul-client-ports-aws"
  description = "Name for resources, defaults to \"consul-client-ports-aws\"."
}

variable "vpc_id" {
  description = "VPC ID to provision resources in."
}

variable "cidr_blocks" {
  type        = "list"
  description = "CIDR blocks for Security Groups."
}
