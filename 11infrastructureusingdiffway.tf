#main.tf
terraform {
    cloud{       # connect to the terraform cloud to store statefile instead of local.
       organization = "terraform_state_file_infrastructure"
       namespaces{
        name = "statefile"
       } 
        }  # terraform cloud block ends here
  required_providers {  # the terraform install the aws provider from the terraform registry.
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {  
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {  # creation of AWS instance using terraform
  ami           = "ami-05c8ca4485f8b138a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name  #called the input from variable.tf file 
  }
}

#variable.tf
variable "instance_name" {     #maintain code in separate file like variable.tf
     description = "instance of the name"
     type = string
     default = "ExampleAppServerInstance" 
  }

#output.tf
output "instance_id"{         # print the instance id of current created configuration (output.tf). 
     description = "print the id of instance"
     value = aws_instance.app_server.id 
}  
 
output "instance_public_ip"{  # print the public ip of instance (output.tf) 
    description = "print the public ip of instance"
    value =  aws_instance.app_server.public_ip
} 




#Make sure all the files (main.tf, variable.tf, output.tf) in one directory.