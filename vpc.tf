resource "aws_vpc" "mainvpc" {
  cidr_block = var.vpc_cider
  tags = {
    Name = var.vpc_name
  }
}