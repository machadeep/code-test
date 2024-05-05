terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider


#provider "github" {
    #token = "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"
    #my_secret = var.my_secret
#}

resource "example_resource" "example" {
  my_secret = var.my_secret
}

variable "my_secret" {}

resource "github_repository" "example" {
  name        = "githubfworkflow"
  description = "test-for-project"

  visibility = "public"

}

# resource "github_branch" "development" {
#   repository = "code-test"
#   branch     = "development"
# }
