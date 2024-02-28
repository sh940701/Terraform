variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "NameForVariableTest"
}

variable "instance_ami" {
  description = "EC2 Amazon Machine Image"
  type        = string
  default     = "ami-07a34fe09b79cabe9"
}
