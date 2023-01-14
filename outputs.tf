output "public_ec2_ip"{
    description = "get public ip"
    value = aws_instance.public-apache2.public_ip
}

output "private_ec2_ip"{
    description = "get private ip"
    value = aws_instance.private-apache2.private_ip
}