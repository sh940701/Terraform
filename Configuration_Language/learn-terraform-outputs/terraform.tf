# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  cloud {
    organization = "Commelier"
    workspaces {
      name = "learn-terraform-outputs"
    }
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.43.0"
    }
  }

  required_version = ">= 1.2.0"
}
