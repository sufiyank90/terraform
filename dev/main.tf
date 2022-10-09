terraform {
  required_version = "> 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 4.16"
    }
  }

}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "Dev"
  }
}