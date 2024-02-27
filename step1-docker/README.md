# step 1

[Terraform - Docker](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Description

Run Docker - Nginx Container by using Terraform

### Initialize

```bash
$ terraform init
```

### Provision

```bash
$ terraform apply
  ...
  Enter a value: yes
```

You can see the Nginx Server at http://localhost:8080

### Stop

```bash
$ terraform destroy
  ...
  Enter a value: yes
```
