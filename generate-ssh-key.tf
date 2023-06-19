terraform {
  backend "s3" {
    bucket = "siva-aws-infrastructure-tfstate"
    key    = "devops/terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_instance" "test-server" {
ami = "ami-012b9156f755804f5"
instance_type = "t2.micro"
key_name = "siva-devops-terraform-sfjbs"
tags = {
Name = "terraform-devops"
}
security_groups = ["${aws_security_group.AWSaccess-terrafrom-sfjbs.name}"]
}

resource "aws_security_group" "AWSaccess-terrafrom-sfjbs" {
name = "AWSaccess-terrafrom-sfjbs"
description = "SSH access"
ingress {
protocol = "tcp"
from_port = 22
to_port = 22
cidr_blocks = ["0.0.0.0/0"]
}
}