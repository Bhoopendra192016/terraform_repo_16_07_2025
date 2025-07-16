terraform {
    required_providers{
        aws={
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

/*
If you need multiple providers
If you have other providers, consolidate them all in one file:
hclterraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    # Add other providers as needed
  }
}
*/