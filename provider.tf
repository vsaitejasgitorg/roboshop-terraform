provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "http://vault-internal.saitejasroboshop.store:8200"
  token   = var.vault_token
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "grafana" {
  url  = "https://grafana-dev.saitejasroboshop.store"
  auth = "admin:prom-operator"
}