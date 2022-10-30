//Terraform using variables
variable "ami"{
    description = "This is the AMI variable"
    default = "ami-05c8ca4485f8b138a"
}

variable "instance_type"{
    description = " Inatnce type" 
    default = "t2.micro"
}

variable "security_groups"{
    decription = "about secutiry groups"
    default = ["launch-wizard-3"]
}

variable "access_key"{
    description = "about security groups"
    default = "AKIAZVWDNBRLJNGNIU4C"
}