terraform {
  required_providers {
    kind = {
      source  = "justenwalker/kind"
      version = ">=0.17.0"
    }
  }
}

provider "kind" {
  kubeconfig = pathexpand("~/.kube/${var.cluster_name}")
}
