# This is the first Terraform Script for creation of infrastructure
provider "aws"{
region   = "ap-south-1"
access_key = "AKIAZVWDNBRLJNGNIU4C"
secret_key ="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"  
} 

resource "aws_instance" "awsinfrastructure"{   
ami = "ami-05c8ca4485f8b138a"
instance_type = "t2.micro"
security_groups = ["launch-wizard-3"]
key_name  = "chandratechnologies"
tags = {
    Name = " Redhat server "
}
}
  
