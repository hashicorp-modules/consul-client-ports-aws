output "consul_client_sg_id" {
  value = "${aws_security_group.consul_client.id}"
}
