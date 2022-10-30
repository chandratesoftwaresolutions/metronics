output "aws_public_ip"{
    description = "Display the EC2 inatnce public IP address"
    value = "${aws_instance.iam.public_ip} "
}


output "aws_private_ip"{
    description = "Display the EC2 instance private IP address"
    value = "${aws_instance.iam.private_ip}"
}

