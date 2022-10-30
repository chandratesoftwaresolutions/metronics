// This is the script for combining all.
provider "aws"{
    region = "ap-south-1"
}

//Securiy Groups
resource "aws_security_group" "wcc"{
    description = "security group by wcc"
    name = "wcc custom security group"
    vpc_id = "vpc-0e6314638d461c8e7"

 //for inbound rules 
 ingress {
    description = "Inbound rules block"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
 }  

 //for outbound rules
 egress {
    description = "outbound rules block"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
 }

 //tags section
 tags = {
    Name = "Custome SG"
 }

//Block about infrastructure
resource "aws_instance" "server"{
    ami = "ami-05c8ca4485f8b138a"
    instance_type = "t2.micro"
    security_groups = ["wcc custom security group"]
    key_name = "chandratechnologies"
    tags = {
        Name = "wcc mall server"
    }
}
// creation of user
resource "aws_iam_user" "customuser"{
    name = "wccuser"
}

// Amazon S3 block
resource "aws_s3_bucket" "wccbucket"{
    description = "custom wcc bucket"
    bucket = "wccbucket"
    acl = "private"
    versioning {
        enabled = "true"
   }
   tags = {
    Name = "custom wcc bucket"
   }

}
}
