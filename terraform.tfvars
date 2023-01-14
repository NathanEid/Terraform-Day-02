##### EC2 Values
image_id = "ami-026e72e4e468afa7b"
instance_type = "t2.micro"
public_ip = true
instance_name = "apache2"

##### Igw Values
igw_name = "main_igw"

##### Public Subnet Values
public_supnet_cider = "10.0.0.0/24"
public_supnet_name = "publicSubnet"

##### Public Subnet Values
private_supnet_cider = "10.0.1.0/24"
private_supnet_name = "privateSubnet"

##### VPC Values
vpc_cider = "10.0.0.0/16"
vpc_name = "mainvpc"

##### Nat gateway Values
nat_name = "nat_gateway"

##### Public table Values
public_destination_cidr_block = "0.0.0.0/0"
public_table_name = "public_table"

##### private table Values
private_destination_cidr_block = "0.0.0.0/0"
private_table_name = "private_table"

##### Security Groups Values
secgr_to_port_in = 80
secgr_from_port_in = 80
secgr_protocol_in = "tcp"
secgr_to_port_eg = 0
secgr_from_port_eg = 0
secgr_protocol_eg = "-1"
secgr_cider = ["0.0.0.0/0"]
secgr_name = "mysecgr"