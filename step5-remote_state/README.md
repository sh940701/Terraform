# step 5

[Terraform - AWS](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build)

## Description

Run Terraform with Terraform Cloud

You can learn How to
migrate `local state` - `TFC state` -> [Link](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-remote)

## Tips

You will be able to migrate local and TFC through the upper link.

But if you link, init, destroy resources which generated via TFC, you can see that local resource (which generated by
local) still remain

When you run `$ terraform apply`, terraform save the state as `terraform.tfstate` file. It contains local-generated
resource's information

And when you migrate with TFC, `terraform.tfstate` is going to empty file, new `terraform.tfstate` file generated inside
of `.terraform` folder

at the same time, new file named `terraform.tfstate.backup` will be generated

If you want to remove resource which generated by local, follow this steps

### 1. run command

```bash
$ terraform logout
```

### 2. delete `environment`, `terraform.tfstate` file in `.terraform`

### 3. remove cloud block in `main.tf`

### 4. copy `terraform.tfstate.backup`, paste `terraform.tfstate`

### 5. run command

```bash
$ terraform init
$ terraform destroy 
```