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
