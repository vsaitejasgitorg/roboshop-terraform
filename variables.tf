variable "vpc_security_group_ids" {
  default = ["sg-0217d4c61f41d9ce7"]
}

variable "instances" {
  default = {

    catalogue = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.micro"

    }
    mongodb = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.small"
    }
    frontend ={
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.micro"
    }
  }
}

variable "zone_id" {
  default = "Z0742899AVG59Z59WGO9"
}

variable "env" {
  default = "dev"
}