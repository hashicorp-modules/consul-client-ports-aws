resource "aws_vpc" "main" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags = "${merge(var.tags, map("Name", format("%s", var.name)))}"
}

module "consul_client_ports_aws" {
  # source = "github.com/hashicorp-modules/consul-client-ports-aws"
  source = "../../../consul-client-ports-aws"

  create      = "${var.create}"
  name        = "${var.name}"
  vpc_id      = "${aws_vpc.main.id}"
  cidr_blocks = ["${var.cidr_blocks}"]
  tags        = "${var.tags}"
}
