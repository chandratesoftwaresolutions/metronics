//Terraform script about variables
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "1yBNm/a2sylsGjVCQjBxJgCnd9QTORK+9uBzajUT"
}

resource "aws_instance" "variable"{
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    security_groups = "${var.security_groups}"
    key_name = "chandratechnologies"
    tags ={
        Name = "variable"
    }
}