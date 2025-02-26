variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  default = "t3.small"
}

variable "vpc_security_group_ids" {
  default = ["sg-0217d4c61f41d9ce7"]
}

variable "instances" {
  default = {

    catalogue = null
    mongodb = null
    frontend = null
  }
}

variable "zone_id" {
  default = "Z0742899AVG59Z59WGO9"
}

variable "env" {
  default = "dev"
}