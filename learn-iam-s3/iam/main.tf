provider "aws" {
    region                  = var.region_oi
    shared_credentials_file = var.credentials_path_oi
    profile                 = var.credentials_profile_oi
}

terraform {
  backend "s3" {
    bucket         = var.backend_state_bucket_oi
    key            = "iam/${var.backend_state_key_oi}"
    region         = var.region_oi
    dynamodb_table = var.backend_state_dynamo_oi
    encrypt        = true

  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = var.aws_version_oi
    }
  }
}
