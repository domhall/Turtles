terraform {
  backend "s3" {
    bucket = "dhall-terraform-states"
    key    = "turtles/github/terraform.tfstate"
    region = "eu-west-2"
  }
}
