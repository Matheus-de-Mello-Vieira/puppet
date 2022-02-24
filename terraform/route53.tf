resource "aws_route53_zone" "main" {
  name = "matheusdemellovieira.com"
}

resource "aws_route53_record" "master" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "node"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.master.public_ip]
}

resource "aws_route53_record" "node" {
  zone_id = aws_route53_zone.main.zone_id
  count   = var.node_instance_count
  name    = "node${count.index}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.node[count.index].public_ip]
}
