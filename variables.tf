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
    "us-east-1" = "ami-8446ff93"
    "us-west-2" = "ami-d732f0b7"
    "type" = "t2.micro"
    "delonterm" = true
    "volsize" = 40
    "deploy" = true
  }
}
