resource "aws_subnet" "public-subnet" {
  vpc_id     = aws_vpc.mainvpc.id
  cidr_block = var.public_supnet_cider
  tags = {
    Name = var.public_supnet_name
  }
}

resource "aws_subnet" "private-subnet" {
  vpc_id     = aws_vpc.mainvpc.id
  cidr_block = var.private_supnet_cider
  tags = {
    Name = var.private_supnet_name
  }
}