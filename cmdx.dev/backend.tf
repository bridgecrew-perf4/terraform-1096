terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.6.0"
    }
  }

  required_version = ">= 1.1.7"

  cloud {
    organization = "pymkdb"

    workspaces {
      name = "cmdx-dev"
    }
  }
}