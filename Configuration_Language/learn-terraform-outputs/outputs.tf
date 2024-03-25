# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Output declarations

output "vpc_id" {
  description = "ID of project VPC"
  value       = module.vpc.vpc_id
}

output "lb_url" {
  description = "URL of load balancer"
  value       = "http://${module.elb_http.elb_dns_name}/"
}

output "web_server_count" {
  description = "Number of web servers provisioned"
  value       = length(module.ec2_instances.instance_ids)
}

# $ terraform output
# $ terraform output lb_url
# $ terraform output -raw lb_url
# $ curl $(terraform output -raw lb_url)

output "db_username" {
  description = "Database administrator username"
  value       = aws_db_instance.database.username
  sensitive   = true
}

output "db_password" {
  description = "Database administrator password"
  value       = aws_db_instance.database.password
  sensitive   = true
}

# Use terraform output to query the database password by name, and notice that Terraform will not redact the value when you specify the output by name.
# $ terraform output db_password
# "notasecurepassword"

# Terraform stores all output values, including those marked as sensitive, as plain text in your state file.

# $ terraform state pull > terraform.tfstate
# $ grep --after-context=10 outputs terraform.tfstate
# "outputs": {
#  "db_password": {
#    "value": "admin",
#    "type": "string",
#    "sensitive": true
#  },
#  "db_username": {
#    "value": "admin",
#    "type": "string",
#    "sensitive": true
#  },

# $ terraform output -json
# Terraform does not redact sensitive output values with the -json option, because it assumes that an automation tool will use the output.

