/*
Desired State:
The desired state is the configuration defined in Terraform files, which describes the intended infrastructure setup.
This includes the resources to be created, their properties, and how they should be configured.
In this case, the desired state includes a GitHub repository with specific attributes such as name, description, visibility, and features like issues, projects, and wiki.
When you run `terraform apply`, Terraform will attempt to create or update the infrastructure to match this desired state.
If the desired state is not in sync with the current state, Terraform will make the necessary changes to reconcile them.

Current State:
The current state is the actual state of the infrastructure as it exists at the moment. Terraform keeps track of this state
in a state file, which is used to map the resources defined in the configuration to the actual resources in the cloud provider.
The current state can differ from the desired state if changes are made outside of Terraform or if the configuration is modified
without applying those changes through Terraform.
The goal of Terraform is to reconcile the current state with the desired state, ensuring that the infrastructure
matches the configuration defined in the Terraform files.
This often involves creating new resources, updating existing ones, or destroying resources that are no longer needed
*/

/*
Overview of Provider Versioning:
In the provided Terraform configuration, the `required_providers` block specifies the GitHub provider with
a version constraint of `~> 5.0`. This means that Terraform will use version 5.0 or any later version that is compatible with 5.x, but not version 6.0 or higher.
This versioning strategy allows for minor updates and bug fixes while avoiding
breaking changes that might occur in major version updates.
The provider block then configures the GitHub provider with an authentication token, which is necessary for
interacting with the GitHub API to create and manage resources like repositories.
This configuration ensures that the desired state of the GitHub repository is defined and can be managed through
Terraform, allowing for consistent and repeatable infrastructure management.
# This is a Terraform configuration file for creating a GitHub repository.

*/