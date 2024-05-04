terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider


provider "github" {
    token = "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"
}

resource "github_repository" "example" {
  name        = "code-test"
  description = "test-for-project"

  visibility = "public"

}

# resource "github_branch" "development" {
#   repository = "code-test"
#   branch     = "development"
# }