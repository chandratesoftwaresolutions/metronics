//This is the script using IAM role instaead of credentials
provider {
    region = "ap-south-1"
} 

resource "aws_instance" "iamrole"{
    ami = "AKIAZVWDNBRLJNGNIU4C"
    instance_type = "t2.micro" //The instance t2.nano is not supported by redhat
    security_groups = "default"
    key_name = "chandratechnologies"
    tags = {
        Name = "server"
    }
}

