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
