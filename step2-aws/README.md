# step 2

[Terraform - AWS](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build)

## Description

Deploy AWS Resources by using Terraform

### Initialize

```bash
$ terraform init
```

### Format Your Code

```bash
$ terraform fmt
```

### Validate Your Code

```bash
$ terraform validate
```

### Create infrastructure

```bash
$ terraform apply
  ...
  Enter a value: yes
```

### Check Infra state

```bash
$ terraform state list

data.aws_ami.ubuntu
aws_instance.app_server
```

### Update Resource

If you update instance type t2.micro -> t3.micro in main.tf and run

```bash
$ terraform init
$ terraform apply

    Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
      ~ update in-place
    
    Terraform will perform the following actions:

  # aws_instance.app_server will be updated in-place
  ~ resource "aws_instance" "app_server" {
        id                                   = "i-0947994d17a0b352f"
      ~ instance_type                        = "t2.micro" -> "t3.micro"
        tags                                 = {
            "Name" = "ExampleAppServerInstance"
        }
        # (30 unchanged attributes hidden)

        # (8 unchanged blocks hidden)
    }

  Plan: 0 to add, 1 to change, 0 to destroy.

  Enter a value: yes
```

### Destroy Resource

```bash
$ terraform destroy
  
  Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

  Terraform will perform the following actions:

  # aws_instance.app_server will be destroyed
  - resource "aws_instance" "app_server" {
      - ami                                  = "ami-07a34fe09b79cabe9" -> null
      - arn                                  = "arn:aws:ec2:ap-northeast-2:751237763713:instance/..." -> null
  }
  
  Plan: 0 to add, 0 to change, 1 to destroy.
  
  Enter a value: yes
```
