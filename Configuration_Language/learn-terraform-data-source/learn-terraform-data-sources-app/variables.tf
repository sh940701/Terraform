# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "instances_per_subnet" {
  description = "Number of EC2 instances in each private subnet"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "Type of EC2 instance to use"
  type        = string
  default     = "t3.micro"
}
