terraform {
  required_providers {
    kind = {
      source  = "justenwalker/kind"
      version = ">=0.17.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">=2.9.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = pathexpand("~/.kube/${var.cluster_name}")
  }
}

provider "kind" {
  kubeconfig = pathexpand("~/.kube/${var.cluster_name}")
}
