# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
# https://developer.hashicorp.com/terraform/tutorials/configuration-language/versions

terraform {
  required_providers {
    aws = {
      version = "~> 3.30.0"
    }
    random = {
      version = ">= 2.1.2"
    }
  }

  required_version = "~> 1.7"
}

provider "aws" {
  region = "ap-northeast-2"
}

provider "random" {}

resource "random_pet" "name" {}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"
  user_data     = file("init-script.sh")

  tags = {
    Name = random_pet.name.id
  }
}
