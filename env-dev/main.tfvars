db_instances = {
  # frontend = {
  #   ami_id        = "ami-09c813fb71547fc4f"
  #   instance_type = "t3.small"
  #   ansible_role = "frontend-docker"
  #   root_volume_size = 30
  # }
  # catalogue = {
  #   ami_id        = "ami-09c813fb71547fc4f"
  #   instance_type = "t3.small"
  #   ansible_role = "catalogue-docker"
  #   root_volume_size = 30
  # }
  mongodb = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20
  }

  redis = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20
  }

  # cart = {
  #   ami_id        = "ami-09c813fb71547fc4f"
  #   instance_type = "t3.small"
  #   ansible_role = "cart-docker"
  #   root_volume_size = 30
  # }
  #
  # user = {
  #   ami_id        = "ami-09c813fb71547fc4f"
  #   instance_type = "t3.small"
  #   ansible_role = "user-docker"
  #   root_volume_size = 30
  # }
  #
  # shipping = {
  #   ami_id        = "ami-09c813fb71547fc4f"
  #   instance_type = "t3.small"
  #   ansible_role = "shipping-docker"
  #   root_volume_size = 30
  # }
  mysql = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20
  }

  rabbitmq = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20

  }

  # payment = {
  #   ami_id        = "ami-09c813fb71547fc4f"
  #   instance_type = "t3.small"
  #   ansible_role = "payment-docker"
  #   root_volume_size = 30
  # }


}

zone_id = "Z0742899AVG59Z59WGO9"

env = "dev"

vpc_security_group_ids = ["sg-0217d4c61f41d9ce7"]

eks = {
  main = {
    subnets     = ["subnet-0d738aafbf19762db", "subnet-0a307db2f5ead4225"]
    eks_version = 1.32
    node_groups = {
      main = {
        min_nodes      = 3
        max_nodes      = 10
        instance_types = ["t3.medium", "t3.large"]
      }
    }
    addons = {
      metrics-server = {}
    }
  }
}