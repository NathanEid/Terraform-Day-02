resource "aws_route_table" "public-table" {
  vpc_id = aws_vpc.mainvpc.id
  tags = {
    Name = var.public_table_name
  }
}

resource "aws_route" "route" {
  route_table_id = aws_route_table.public-table.id
  destination_cidr_block = var.public_destination_cidr_block
  gateway_id = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "subnetass" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.public-table.id
}

#####################################################
resource "aws_route_table" "private-table" {
  vpc_id = aws_vpc.mainvpc.id
  tags = {
    Name = var.private_table_name
  }
}

resource "aws_route" "private-route" {
  route_table_id = aws_route_table.private-table.id
  destination_cidr_block = var.private_destination_cidr_block
  gateway_id = aws_nat_gateway.nat_gateway.id
}

resource "aws_route_table_association" "private-subnetass" {
  subnet_id      = aws_subnet.private-subnet.id
  route_table_id = aws_route_table.private-table.id
}

