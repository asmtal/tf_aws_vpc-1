- aws cli, terraform 0.7.x required
- recommend run ssh-agent for bastion host access
- username is ubuntu for the specified amis
- see variables.tf for root configuration inputs
- see vpc.tf for vpc module configuration inputs
- see bastion.tf for bastion module configuration inputs
- variables required for deployment (in env vars, on command line or in terraform.tfvars, as here):

    [kpedersen@kpedzbox tf_aws_vpc]$ cat terraform.tfvars<br>
    access_key="XXXXXXXXXXXXXXXXXXXXX"<br>
    secret_key="YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"<br>
    keypair="kpedersen_aws_rsa" #aws keypair to deploy on the bastion host for access<br>
    workstation_cidr="208.68.35.214/32" #deployment workstation's public ip, in cidr notation<br>


