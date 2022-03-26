terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.6.0"
    }
  }

  required_version = ">= 1.1.7"

  # Backend configuration
  # Prior to v1.1.0, the backend block was: backend "remote" {...}
  # Cannot use input variables with cloud/backend blocks
  # 
  # Terraform Cloud:
  # "Execution mode" is set to "local" in Terrafrom Cloud setting page for this workspace
  cloud {
    organization = "pymkdb"
    hostname     = "app.terraform.io" # Optional; defaults to app.terraform.io
    workspaces {
      name = "sandbox"
    }
  }

}