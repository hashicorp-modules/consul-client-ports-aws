module "consul_client_ports_aws" {
  # source = "github.com/hashicorp-modules/consul-client-ports-aws"
  source = "../../../consul-client-ports-aws"

  create      = false
  vpc_id      = "1234"
  cidr_blocks = ["10.139.0.0/16"]
}
