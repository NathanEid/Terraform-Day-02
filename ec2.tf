resource "aws_instance" "public-apache2" {
  ami             = var.image_id 
  instance_type   = var.instance_type
  associate_public_ip_address = var.public_ip
  subnet_id       = aws_subnet.public-subnet.id
  vpc_security_group_ids = [aws_security_group.mysecgr.id]
  user_data = var.user_data
  tags = {
    Name = var.instance_name
  }
}

resource "aws_instance" "private-apache2" {
  ami             = var.image_id 
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.private-subnet.id
  vpc_security_group_ids = [aws_security_group.mysecgr.id]
  user_data = var.user_data
  tags = {
    Name = var.instance_name
  }
}