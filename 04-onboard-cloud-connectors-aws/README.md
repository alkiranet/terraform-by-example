## Provisioning Alkira Connector Resources
When onboarding _Alkira Cloud Connectors_, it's common to provision resources together that share the same _lifecycle_. In this example, we will provision the following resources:

- [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
- [aws_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)
- [alkira_credential_aws_vpc](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/credential_aws_vpc)
- [alkira_connector_aws_vpc](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_aws_vpc)

### Commands Used
```shell
# Initialize
terraform init

# Plan
terraform plan -out=tfplan

# Apply
terraform apply tfplan
```