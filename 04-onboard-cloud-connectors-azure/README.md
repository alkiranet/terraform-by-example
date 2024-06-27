## Provisioning Alkira Connector Resources
When onboarding _Alkira Cloud Connectors_, it's common to provision resources together that share the same _lifecycle_. In this example, we will provision the following resources:

- [azurerm_virtual_network](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network)
- [azurerm_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet)
- [alkira_credential_azure_vnet](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/credential_azure_vnet)
- [alkira_connector_azure_vnet](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_azure_vnet)

### Commands Used
```shell
# Initialize
terraform init

# Plan
terraform plan -out=tfplan

# Apply
terraform apply tfplan
```