## Provisioning Alkira Connector Resources
In this exercise, we will provision resource type [alkira_connector_aws_vpc](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_aws_vpc) along with relevant dependencies that make up a typical _workflow_.

### Commands Used
```shell
# Initialize
terraform init

# Plan
terraform plan -out=tfplan

# Apply
terraform apply tfplan
```