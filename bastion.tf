module "bastion" {

  source = "github.com/kpeder/mod_tf_aws_bastion"

  keypair = "${var.keypair}"
  region = "${var.region["primary"]}"
  workstation_cidr = "${var.workstation_cidr}"

  public_subnets = "${module.vpc.public_subnets}"
  vpc_security_group_ids = "${module.vpc.public_subnets}"
  vpc_id = "${module.vpc.vpc_id}"

  type = "${var.bastion["type"]}"
  delonterm = "${var.bastion["delonterm"]}"
  volsize = "${var.bastion["volsize"]}"

}

output "bastion_dns" {
  value = "${module.bastion.bastion_dns}"
}

