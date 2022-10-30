#Create multiple servers at a time by using count attribute
provider "aws" {
region = "ap-south-1"
access_key = "AKIAZVWDNBRLJNGNIU4C"
secret_key = "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"  
}

resource "aws_instance" "servers"{
    count = "2"
    ami = "ami-05c8ca4485f8b138a"
    instance_type = "t2.micro"
    security_groups = "[launch-wizard-3]"
    key_name  = "chandratechnologies"
    tags ={
        Name= " multiple servers - ${count.index}"
    }
}