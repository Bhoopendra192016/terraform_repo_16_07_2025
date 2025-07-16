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