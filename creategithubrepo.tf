terraform {
  required_providers {
    github={
      source = "integrations/github"
      version = "~> 5.0"
    }
  }
}
#configure the github providers.
  provider "github" {
    token = "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"      
  }

  resource "github_repository" "terraform_repo_16_07_2025" {
    name        = "terraform_repo_16_07_2025"
    description = "This is a repository created by Terraform on 16th July 2025"
    visibility  = "public"
    has_issues = true
    has_projects = true
    has_wiki = true
    
  }