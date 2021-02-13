terraform {
  backend "s3" {
    # Specification for storing terraform state on S3
    bucket         = "${var.backend_state_bucket_oi}"
    region         = var.region_oi
    dynamodb_table = "${var.backend_state_dynamo_oi}"
    encrypt        = true
  }
}

# Export account ID, user ID, and ARN to be used elsewhere within module
data "aws_caller_identity" "current" {}

# provider "aws" {
#     region                  = var.region_oi
#     shared_credentials_file = var.credentials_path_oi
#     profile                 = var.credentials_profile_oi
# }

# resource "aws_instance" "parctice" {
#   ami           = var.user_oi
#   instance_type = var.s3_instance_type_oi
# }

# data "terraform_remote_state" "<key>" {
#   # Allows terraform from this dir to refer to values from the terraform in the "<key>" dir
#   backend = "s3"

#   config = {
#     bucket = "<s3_prefix>-${var.backend_state_bucket_oi}"
#     key    = "<s3_key>/${var.backend_state_key_oi}"
#     region = var.region_oi
#   }
# }
