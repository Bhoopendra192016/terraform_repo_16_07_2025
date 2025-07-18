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

There are multiple ways for specifing the version of the provider in Terraform.
>=1.0.0     This means that Terraform will use version 1.0.0 or any later version, including
            major version updates (e.g., 2.0.0, 3.0.0, etc.).
~> 1.0.0    This means that Terraform will use version 1.0.0 or any later version that is compatible with 1.x,
            but not version 2.0.0 or higher.
            It allows for minor updates and bug fixes while avoiding breaking changes that might occur in major version updates.
<= 1.0.0    This means that Terraform will use version 1.0.0 or any earlier version, including major version updates (e.g., 0.9.0, 0.8.0, etc.).
< 1.0.0   This means that Terraform will use any version earlier than 1.0.0, including versions like 0.9.0, 0.8.0, etc.
            It does not allow for any version 1.x or later. This is useful when you want to ensure that you are using a specific version of a provider
            that is known to work with your configuration, especially if you are using features that may not be available in later versions.
            This is useful when you want to ensure that you are using a specific version of a provider that is known to work with your configuration,
            especially if you are using features that may not be available in later versions. It is often used in conjunction with the `required_providers` 
            block to specify the provider and its version constraints.
>=1.0.0, <1.30.0
            This means that Terraform will use any version starting from 1.0.0 up to, but not including, 1.30.0.
            It allows for a range of versions to be used, ensuring compatibility with the features and functionality
            available in those versions while avoiding potential breaking changes in later major versions.
            This is useful when you want to ensure that your configuration works with a specific range of provider versions,
            especially if you are using features that may change or be deprecated in future releases.
            It is often used in conjunction with the `required_providers` block to specify the provider
            and its version constraints.

Terraform refresh:-
    terraform refresh
Updates the Terraform state file with the real infrastructure values from the cloud provider — without changing the actual infrastructure.
Why is this useful?
🔹 Detect drift between Terraform state and real-world infrastructure.
Imagine someone manually changes a tag or deletes an EC2 instance from AWS — terraform refresh will:

Query the actual infrastructure
Update the .tfstate file to reflect what's currently deployed
Show you any mismatches

💥 Use Cases
Scenario	                                            Benefit of refresh
Someone manually edited cloud resources	        Detect that your state is out of sync.
You want to compare a fresh plan	            Ensure terraform plan shows the true delta.
Output value seems wrong	                    A refresh may correct outdated or stale values.




*/