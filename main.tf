
resource "aws_instance" "instance" {
  count = length(var.instances)
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.instances[count.index]
  }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  name    = "${var.instances[count.index]}-${var.env}"
  type    = "A"
  zone_id = var.zone_id
  ttl = 10
  records = [aws_instance.instance[count.index].private_ip]
}
