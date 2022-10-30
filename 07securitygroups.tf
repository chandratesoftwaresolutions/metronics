// script for create custom security groups
provider "aws"{
    region = "ap-south-1"
}

resource "aws_security_group" "css"{
    description = "custom security group"
    name = "chandrainfra"
    vpc_id = "vpc-0e6314638d461c8e7"

# for inbound rules use ingress
ingress{
    description = "Inbound rules enable"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

#for outbound rules use egress
egress{
    description = "outbound rules enable"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

tags = {
    Name = "security groups by css"
}
}