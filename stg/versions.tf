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