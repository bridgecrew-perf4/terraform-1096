terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.6.0"
    }
  }

  required_version = ">= 1.1.7"

  # Terraform Cloud as the remote backend
  # Execution mode is set to "local" in Terrafrom Cloud setting page for this workspace
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "pymkdb"

    workspaces {
      name = "sandbox"
    }
  }

}