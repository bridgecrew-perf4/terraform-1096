terraform {
  backend "s3" {
    # Specification for storing terraform state on S3
    bucket         = var.backend_state_bucket_oi
    key            = "s3/${var.backend_state_key_oi}"
    region         = var.region_oi
    dynamodb_table = var.backend_state_dynamo_oi
    encrypt        = true

  }
}

data "terraform_remote_state" "iam" {
  backend = "s3"
  config = {
    bucket = var.backend_state_bucket_oi
    key = "iam/${var.backend_state_key_oi}"
    region = var.region_oi
  }
}

# Export account ID, user ID, and ARN to be used elsewhere within module
data "aws_caller_identity" "current" {}
