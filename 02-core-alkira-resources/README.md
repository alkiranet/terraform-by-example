## Provisioning Core Alkira Resources
In this exercise, we will provision some of the _core_ building blocks of Alkira. These examples cover resources that may be classified as _shared services_. An example could be a group. You may have numerous connectors placed in a single group, meaning, you wouldn't store the _state file_ where the group resides in the same _state file_ as one individual connector.

### Commands Used
```shell
# Initialize
terraform init

# Plan
terraform plan -out=tfplan

# Apply
terraform apply tfplan
```