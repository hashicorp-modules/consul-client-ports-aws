resource "aws_vpc" "main" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name = "consul-client-ports-aws"
  }
}

module "consul_client_ports_aws" {
  # source = "github.com/hashicorp-modules/consul-client-ports-aws?ref=f-refactor"
  source = "../../../consul-client-ports-aws"

  vpc_id      = "${aws_vpc.main.id}"
  cidr_blocks = ["${aws_vpc.main.cidr_block}"]
}
