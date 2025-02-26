instances = {
  frontend = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  }
  catalogue = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  }
  mongodb = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  }
}

zone_id = "Z0742899AVG59Z59WGO9"

env = "prod"

vpc_security_group_ids = ["sg-0217d4c61f41d9ce7"]