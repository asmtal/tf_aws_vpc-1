module "vpc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"

  name = "${var.vpc_name}"

  cidr = "${var.cidr}" 
  private_subnets = "${var.private_subnets}"
  public_subnets  = "${var.public_subnets}"

  enable_dns_support = "${var.enable_dns_support}"
  map_public_ip_on_launch = "${var.map_public_ip_on_launch}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  enable_nat_gateway = "${var.enable_nat_gateway}"

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
