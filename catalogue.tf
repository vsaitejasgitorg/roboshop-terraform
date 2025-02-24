resource "aws_instance" "catalogue" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0217d4c61f41d9ce7"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  name    = "catalogue-dev"
  type    = "A"
  zone_id = "Z0742899AVG59Z59WGO9"
  ttl = 10
  records = [aws_instance.catalogue.private_ip]
}