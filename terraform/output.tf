output "master_url" {
  value = aws_route53_record.master.fqdn
}

output "node_url" {
  value = aws_route53_record.node.*.fqdn
}

output "private_key_pem" {
  value     = tls_private_key.main.private_key_pem
  sensitive = true
}