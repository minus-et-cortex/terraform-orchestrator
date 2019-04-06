
module "network" {
  source = "../terraform-network"
}

module "security" {
  source = "../terraform-security"
  aws-vpc-id = "${module.network.aws-vpc-id}"
  aws-public-subnet-id = "${module.network.aws-public-subnet-id}"
}
