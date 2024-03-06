## Provisioning Regional Internet Egress
In this exercise, we will provision all resources necessary for _secure internet egress_.

### Commands Used
```shell
# Initialize
terraform init

# Plan
terraform plan -out=tfplan

# Apply
terraform apply tfplan
```