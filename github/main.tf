terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var.github_token
}

resource "github_repository" "turtles" {
  name        = "Turtles"
  description = "It's Turtles all the way down"

  visibility = "public"
}
resource "github_actions_secret" "aws_key" {
  repository      = github_repository.turtles.name
  secret_name     = "aws_key"
  plaintext_value = var.turtle_access_key
}
resource "github_actions_secret" "aws_secret_key" {
  repository      = github_repository.turtles.name
  secret_name     = "aws_secret_key"
  plaintext_value = var.turtle_secret_access_key
}
