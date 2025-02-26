resource "aws_instance" "user" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  name    = "user-dev"
  type    = "A"
  zone_id = "Z0742899AVG59Z59WGO9"
  ttl = 10
  records = [aws_instance.user.private_ip]
}

resource "null_resource" "user" {
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.user.private_ip
    }
    inline =[
      "sudo pip3.11 install ansible",
      "ansible-pull -i localhost, -U https://github.com/vadlasaiteja-git/roboshop-ansible roboshop.yml  -e component_name=user -e env=dev"

    ]
  }
}