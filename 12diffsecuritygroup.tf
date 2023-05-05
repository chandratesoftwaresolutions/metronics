terraform{
    cloud{
        organization= "terraform_state_file_infrasructure"
        namespaces{
            name = "statefile"
        }
    }
    required_providers {
      aws={
        source = "hashicorp/aws"
        version = "~> 4.16"
      }
    }
    required_version = ">= 1.2.0"
}
provider "aws"{
    region= "ap-south-1"
}
resource "aws_security_group" "sg1"{
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
resource "aws_s3_bucket" "custombucket"{
    description = "user amazon s3 bucket"
    bucket = "s3bucketcss"
    acl = "private"
    versioning {
      enabled = true
    }
    tags = {
        Name = "s3bucket by css"
    }
}
resource "aws_instance" "v1" {
    ami = "ami-05c8ca4485f8b138a"
    instance_type = "t2.micro"
    security_groups =  aws_security_group.sg1.Name 
    key_name = "chandratechnologies"
    tags = {
        Name = "custom"
    }
    resource "aws_eip" "csseip"{

    }

    resource "aws_eip_association" "css_eip_association"{
        instance_id = aws_instance.v1.id
        allocation_id = aws_eip.csseip.id
    }
}
