output "environment" {
  value = "${var.environment}"
}

output "consul_client_sg_id" {
  value = "${module.consul_client_ports_aws.consul_client_sg_id}"
}
