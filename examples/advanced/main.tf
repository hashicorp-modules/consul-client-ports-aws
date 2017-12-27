resource "aws_vpc" "main" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name = "${var.name}"
  }
}

module "consul_client_ports_aws" {
  source = "../../../consul-client-ports-aws"
  # source = "git@github.com:hashicorp-modules/consul-client-ports-aws?ref=f-refactor"

  count       = "${var.count}"
  name        = "${var.name}"
  vpc_id      = "${aws_vpc.main.id}"
  cidr_blocks = ["${var.cidr_blocks}"]
}
