# Terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = var.aws_version_oi
    }
  }
  required_version = var.terraform_version_oi
}
