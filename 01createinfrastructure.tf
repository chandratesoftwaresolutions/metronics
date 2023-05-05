# This is the first Terraform Script for creation of infrastructure
provider "aws"{
region   = "ap-south-1"
access_key = "AKIAUREIXBKUXZTPDDVU"
secret_key ="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"  
} 

resource "aws_instance" "awsinfrastructure"{   
ami = "ami-0f9d9a251c1a44858"
instance_type = "t2.micro"
security_groups = ["launch-wizard-17"]
key_name  = "chandrasoftwaresolutions"
tags = {
    Name = " Redhat server "
}
}
  
