# AWS Consul Client Ports Terraform Module

Creates a standard Consul client security group in AWS.

## Environment Variables

- `AWS_DEFAULT_REGION`
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

## Input Variables

- `provision`: [Optional] Override to prevent provisioning resources in this module, defaults to "true".
- `name`: [Optional] Name for resources, defaults to "consul-client-ports-aws".
- `vpc_id`: [Required] VPC ID to provision resources in.
- `cidr_blocks`: [Required] CIDR blocks for Security Groups.

## Outputs

- `consul_client_sg_id`: Consul client security group ID.

## Module Dependencies

_None_

## Authors

HashiCorp Solutions Engineering Team.

## License

Mozilla Public License Version 2.0. See LICENSE for full details.
