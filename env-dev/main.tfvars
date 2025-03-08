instances = {
  frontend = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "frontend-docker"
  }
  catalogue = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "catalogue-docker"
  }
  mongodb = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  }

  redis = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  }

  cart = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "cart-docker"
  }

  user = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "user-docker"
  }

  shipping = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "shipping-docker"
  }
  mysql = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  }

  rabbitmq = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  }

  payment = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "payment-docker"
  }

  dispatch = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "dispatch-docker"
  }
}

zone_id = "Z0742899AVG59Z59WGO9"

env = "dev"

vpc_security_group_ids = ["sg-0217d4c61f41d9ce7"]