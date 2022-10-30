provider "aws"{
    region = "ap-south-1"
}

resource "aws_instance" "aws_ec2"{
    ami = "ami-05c8ca4485f8b138a"
    instance_type =  "t2.micro"
    security_groups = ["launch-wizard-3"]
    key_name = "chandratechnologies"
    tags = {
        Name = "yellowhat"
    }

    resource "aws_eip" "csseip"{

    }

    resource "aws_eip_association" "css_eip_association"{
        instance-id = aws_instance.aws_ec2.id
        allocation_id = aws_eip.csseip.id
    }
}