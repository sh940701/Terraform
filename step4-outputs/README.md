# step 4

[Terraform - AWS](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build)

## Description

Outputs from `$ terraform apply`

### Check Outputs
You can find Outputs after generate outputs.tf

`$ terraform apply` after add outputs.tf
```bash
$ terraform apply
aws_instance.app_server: Refreshing state... [id=i-0cbbed187cbecab8b]

Changes to Outputs:
  + instance_id        = "i-0cbbed187cbecab8b"
  + instance_public_ip = "43.202.1.243"

You can apply this plan to save these new output values to the Terraform state, without changing
any real infrastructure.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes


Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

instance_id = "i-0cbbed187cbecab8b"
instance_public_ip = "43.202.1.243"
```

You can use `$ terraform output`
```bash
$ terraform output
instance_id = "i-0cbbed187cbecab8b"
instance_public_ip = "43.202.1.243"
```

And you can pass the parameters which are pre-defined in outputs.tf
```bash
$ terraform output instance_id 
"i-0cbbed187cbecab8b"
```
```bash
$ terraform output instance_public_ip
"43.202.1.243"
```
