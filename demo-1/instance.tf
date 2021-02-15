terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
    # access_key = "${var.AWS_ACCESS_KEY}"
    # secret_key = "${var.AWS_SECRET_KEY}"
    region = "ap-northeast-2"
}

resource "aws_instance" "koas-example" {
  ami           = "ami-09282971cf2faa4c9"
  instance_type = "t2.micro"
  tags = {
    Name = "scalr-poc-instance"
  }
}
