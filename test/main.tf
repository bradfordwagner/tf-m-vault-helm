module "kind_cluster" {
  source              = "git::https://github.com/bradfordwagner/tf-m-k8s-kind.git?ref=0.1.0"
  name                = var.cluster_name
}

module "test_module" {
  source = "../"
  input  = var.input
}
