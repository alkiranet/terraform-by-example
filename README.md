## Alkira / Terraform Training
The following _project_ consists of various _exercises_ that cover common use cases when using [HashiCorp's Terraform](https://www.terraform.io/) to automate [Alkira Infrastructure.](https://www.alkira.com/) Exercises are separated by _branches_ based on intent. You can toggle the branch to switch to a specific set of exercises:
- **main:** Informational branch that links to other branches
- **basic:** Basic examples; Focuses on building individual resources for initial learning
- **advanced:** Advanced examples; Focuses on combining various resources for advanced _use cases_

### Useful Resources
[Alkira's Terraform Provider](https://registry.terraform.io/providers/alkiranet/alkira/latest) is often used in _tandem_ with the following:
- [terraform-provider-aws](https://registry.terraform.io/providers/hashicorp/aws/latest)
- [terraform-provider-azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
- [terraform-provider-google](https://registry.terraform.io/providers/hashicorp/google/latest)
- [terraform-provider-oci](https://registry.terraform.io/providers/oracle/oci/latest)

### Basic Exercise Ordering
The _basic_ examples are ordered _hierarchically_ in the order that you would build them in practice.

### Advanced Exercise Ordering
**Exercises** for this training are _sequential_. Beginning with how to import resources created manually into _Terraform_ and progressively shifting to how resources can be onboarded in _greenfield_ scenarios. This is important to consider when building new infrastructure. In _AWS_, you cannot provision a _subnet_ until a _VPC_ has been provisioned. Furthermore, resources exist in _Alkira_, like _policies_ and _rule-lists_ that cannot be provisioned until _rules_ exist.