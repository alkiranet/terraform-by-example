## Importing Resources
In this exercise, we will import existing resources into _Terraform State_ and generate the configuration. You can find detailed documentation on generating configuration in the [HashiCorp Documentation](https://developer.hashicorp.com/terraform/language/import/generating-configuration).

## What to include in a particular Import / State File
Let's examine a typical _cloud network_ intake process for AWS:
- [AWS VPC](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) is provisioned
- [AWS Subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) are provisioned both at _build-time_ and throughout the lifecycle of a given _VPC_
- [Alkira Connector](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_aws_vpc) is also created at _build-time_

:wrench: In a purely greenfield deployment, these tightly coupled resources would often be _built_ together and _decommissioned_ together when no longer needed. This is not a **1 size fits all**. An organization's existing _intake process_ should inform how existing resources are imported.

### Commands Used
```shell
# Initialize
terraform init

# Plan / Generate Configuration
terraform plan -generate-config-out=main.tf

# Complete Import
terraform apply
```

:warning: Although you can _import_ infrastructure, it is not always a good idea. Given Terraform's _declarative_ nature, you are bound to run into configuration differences between the Terraform code being _imported_ and/or _generated_, and the Terraform code itself. It is usually a good practice to only _import_ resources in **one-off scenarios**, and not make it part of a larger strategy.