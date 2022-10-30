resource "aws_instance" "awsinfrastructure"{   
ami = "ami-05c8ca4485f8b138a"
instance_type = "t2.micro"
security_groups = ["launch-wizard-3"]
key_name  = "chandratechnologies"
tags = {
    Name = " Redhat server "
}
}