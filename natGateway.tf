resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public-subnet.id

  tags = {
    Name = var.nat_name
  }

  depends_on = [aws_internet_gateway.igw]
}

#Elistic IP
resource "aws_eip" "lb" {
}