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

data "aws_ami" "ubuntu" {
  most_recent = true

  owners = ["099720109477"] # Canonical

  # https://cloud-images.ubuntu.com/locator/ec2/
  # https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html
  filter {
    name   = "image-id"
    values = ["ami-07a34fe09b79cabe9"]
  }

}


resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
