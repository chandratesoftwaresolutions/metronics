#Script for create iam user
provider "aws"{
    region = "ap-south-1"
}

resource "aws_iam_user" "iamuser"{
    count = length(var.iam) 
    name = var.iam[count.index]
}