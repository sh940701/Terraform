# Terraform_AWS_Docs https://registry.terraform.io/providers/hashicorp/aws/latest/docs

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
  region  = "ap-northeast-2"
  profile = "profile-name-that-you-want-to-use"
}

resource "aws_instance" "app_server" {
  ami           = "ami-07a34fe09b79cabe9"
  instance_type = "t3.micro"

  tags = {
    Name = var.instance_name
  }
}
