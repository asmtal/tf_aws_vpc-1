resource "aws_db_subnet_group" "tf_rds_sg" {
  name       = "tf_rds_sg"
  subnet_ids = ["${element(module.vpc.private_subnets, 0)}", "${element(module.vpc.private_subnets, 1)}"]

  tags {
    Name = "CDH DB subnet group"
  }
}

output "cmdatabase_subnet" {
  value = "${aws_db_subnet_group.tf_rds_sg.id}"
}

