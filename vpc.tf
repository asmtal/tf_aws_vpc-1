module "vpc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"

  name = "tf-vpc-testbed"

  cidr = "10.42.0.0/16"
  private_subnets = ["10.42.1.0/24", "10.42.2.0/24", "10.42.3.0/24"]
  public_subnets  = ["10.42.101.0/24"]

  enable_dns_support = "true"
  map_public_ip_on_launch = "true"
  enable_dns_hostnames = "true"
  enable_nat_gateway = "true"

  azs      = ["${var.region["primary"]}a", "${var.region["primary"]}b", "${var.region["primary"]}c"]
}

output "private_subnets" {
  value = "${module.vpc.private_subnets}"
}

output "public_subnets" {
  value = "${module.vpc.public_subnets}"
}

output "default_security_group" {
  value = "${module.vpc.default_security_group_id}"
}

output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}
