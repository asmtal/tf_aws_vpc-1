variable keypair {}

variable region {
  type = "map"
  default = {
    "primary" = "us-west-2"
    "backup" = "us-east-1"
  }
}

variable workstation_cidr {}

variable bastion {
  type = "map"
  default {
    "type" = "t2.micro"
    "delonterm" = true
    "volsize" = 40
    "deploy" = true
  }
}
