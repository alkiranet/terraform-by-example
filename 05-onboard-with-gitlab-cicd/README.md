## Onboarding Connectors using GitLab CICD
In this example, we will take the _infrastructure-as-code_ used in the previous example, and leverage [GitLab CICD](https://docs.gitlab.com/ee/ci/) to build the _infrastructure_. The configuration will use [Terraform Cloud](https://app.terraform.io/) as a _remote backend_ for state management.

## About GitLab CICD
GitLab CICD is a popular _version control_ platform _(comparable to [GitHub](https://github.com/))_ that comes with integrated CICD capabilities.

## Pipeline Overview
This pipeline is separated into different stages that mimic a typical Terraform workflow.
- **before_script**: Sets up the Terraform CLI configuration file using an _API Token_ generated from _Terraform Cloud_
- **Validate**: Checks all files with the **.tf** extension for syntax issues without making any changes to the _infrastructure_
- **Plan**: Builds an _execution plan_ to outline what changes will be made to match the configuration in the Terraform files; Again, no changes are made to the _infrastructure_
- **Apply**: Applies changes to _infrastructure_ that are required to match the desired state defined in Terraform files

:warning: For _validate_ and _plan_, this pipeline will run for _merge requests_ and _main_ to ensure changes are valid before the merge takes place. The _apply_ stage only runs on _main_ after changes have been reviewed and the merge takes place.