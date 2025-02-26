
resource "aws_instance" "instance" {
  for_each = var.instances
  ami = each.value["ami_id"]
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "record" {
  for_each = var.instances
  name    = "${each.key}-${var.env}"
  type    = "A"
  zone_id = var.zone_id
  ttl = 10
  records = [aws_instance.instance[each.key].private_ip]
}
