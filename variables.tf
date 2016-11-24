variable keypair {}

variable region {
  type = "map"

  default = {
    "primary" = "us-west-2"
    "backup"  = "us-east-1"
  }
}

variable availability_zones {
  type = "map"

  default = {
    "us-east-1" = "us-east-1a,us-east-1b,us-east-1c"
    "us-west-2" = "us-west-2a,us-west-2b,us-west-2c"
  }
}

variable workstation_cidr {}

#Bastion module input variables
variable bastion {
  type = "map"

  default {
    "type"      = "t2.micro"
    "delonterm" = true
    "volsize"   = 40
  }
}

#VPC module input variables
variable vpc_name {
  default = "tf-vpc-testbed"
}

variable cidr {
  default = "10.42.0.0/16"
}

variable private_subnets {
  default = ["10.42.1.0/24", "10.42.2.0/24", "10.42.3.0/24"]
}

variable public_subnets {
  default = ["10.42.101.0/24"]
}

variable enable_dns_support {
  default = "true"
}

variable map_public_ip_on_launch {
  default = "true"
}

variable enable_dns_hostnames {
  default = "true"
}

variable enable_nat_gateway {
  default = "true"
}
