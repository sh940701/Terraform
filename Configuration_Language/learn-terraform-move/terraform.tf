terraform {
  cloud {
    organization = "Commelier"
    workspaces {
      name = "learn-terraform-move"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.31.0"
    }
  }
  required_version = ">= 1.3.0"
}
