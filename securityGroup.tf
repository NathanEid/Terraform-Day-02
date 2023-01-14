resource "aws_security_group" "mysecgr" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.mainvpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = var.secgr_from_port_in
    to_port          = var.secgr_to_port_in
    protocol         = var.secgr_protocol_in
    cidr_blocks      = var.secgr_cider
  }

  egress {
    from_port        = var.secgr_from_port_eg
    to_port          = var.secgr_to_port_eg
    protocol         = var.secgr_protocol_eg
    cidr_blocks      = var.secgr_cider
  }

  tags = {
    Name = var.secgr_name
  }
}
