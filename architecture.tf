module "versioner" {
  source = "../terraform-versioner"
}

module "network" {
  source = "../terraform-network"
}

module "security" {
  source = "../terraform-security"
  aws-vpc-id = "${module.network.aws-vpc-id}"
}
