resource "aws_instance" "instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids


  root_block_device {
    volume_size = var.root_volume_size
  }

  tags = {
    Name = var.name
    monitor = "true"
  }
}

resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}-${var.env}"
  type    = "A"
  ttl     = 10
  records = [aws_instance.instance.private_ip]
}

resource "null_resource" "component" {
  depends_on = [aws_route53_record.record]
  triggers = {
    instance_id_change = aws_instance.instance.id
  }

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = data.vault_generic_secret.ssh.data["username"]
      password = data.vault_generic_secret.ssh.data["password"]
      host     = aws_instance.instance.private_ip
    }
    inline =[
      "sudo pip3.11 install ansible hvac",
      "ansible-pull -i localhost, -U https://github.com/vsaitejasgitorg/roboshop-ansible roboshop.yml  -e component_name=${var.ansible_role} -e env=${var.env} -e vault_token=${var.vault_token}"

    ]
  }
}