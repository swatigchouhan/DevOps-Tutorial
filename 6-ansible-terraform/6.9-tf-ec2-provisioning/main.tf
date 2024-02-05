terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "swati.chouhan"
}

resource "aws_instance" "server" {
  ami           = "ami-00d990e7e5ece7974"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformServer"
  }
}