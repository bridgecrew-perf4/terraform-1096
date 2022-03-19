# The block below configures Terraform to use the 'remote' backend with Terraform Cloud.
# For more information, see https://www.terraform.io/docs/backends/types/remote.html
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.6.0"
    }
  }

  required_version = ">= 1.1.7"

  # Terraform Cloud -- but it has a bug in 1.1.7 version of terraform
  # backend "remote" {
  #   hostname     = "app.terraform.io"
  #   organization = "pymkdb"

  #   workspaces {
  #     name = "sandbox"
  #   }
  # }

}