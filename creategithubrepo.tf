/*
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}
#configure the github providers.
provider "github" {
  token = ""
}

resource "github_repository" "terraform_repo_16_07_2025" {
  name         = "terraform_repo_16_07_2025"
  description  = "This is a repository created by Terraform on 16th July 2025"
  visibility   = "public"
  has_issues   = true
  has_projects = true
  has_wiki     = true
  vulnerability_alerts = false
}

To import the github fine-grained personal access token, use the following command:
# terraform import github_repository.terraform_repo_16_07_2025 <repository_name>
# Example: terraform import github_repository.terraform_repo_16_07_2025 terraform_repo_16_07_2025
export TF_VAR_github_token="your_github_token_here"
*/
