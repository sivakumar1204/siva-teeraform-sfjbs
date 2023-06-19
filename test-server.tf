/*
terraform {
  backend "s3" {
    bucket = "siva-aws-infrastructure-tfstate"
    key    = "devops/terraform.tfstate"
    region = "ap-south-1"
  }
}


resource "aws_instance" "test-server" {
  ami           = "ami-012b9156f755804f5" #Amazon Linux AMI
  instance_type = "t2.micro"
  tags = {
    "Name"        = "test-server"
    "environment" = "dev"
  }
}

*/