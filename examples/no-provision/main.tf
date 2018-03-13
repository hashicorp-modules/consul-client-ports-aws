module "consul_client_ports_aws" {
  # source = "github.com/hashicorp-modules/consul-client-ports-aws?ref=f-refactor"
  source = "../../../consul-client-ports-aws"

  count       = "0"
  vpc_id      = "1234"
  cidr_blocks = ["10.139.0.0/16"]
}
