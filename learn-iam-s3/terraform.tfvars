# Terraform ----------------------------------------------------------------------------------------
variable "terraform_version_oi" {
    default     = ">= 0.13"
    type        = string
    description = "The AWS region to use"
}

# AWS ----------------------------------------------------------------------------------------------
variable "aws_version_oi" {
    default     = ">= 3.27"
    type        = string
    description = "The AWS region to use"
}


variable "region_oi" {
    default     = "us-west-2"
    type        = string
    description = "The AWS region to use"
}

variable "credentials_path_oi" {
  default     = "~/.aws/terraform.credentials"
  type        = string
  description = "Path to the default credentials"
}

variable "credentials_profile_oi" {
  default     = "default"
  type        = string
  description = "Default profile to use for credentials"
}

# S3 -----------------------------------------------------------------------------------------------
variable "s3_instance_type_oi" {
  default     = "t2.micro"
  type        = string
  description = "Default S3 instance"
}

# Backend ------------------------------------------------------------------------------------------
variable "backend_state_bucket_oi" {
  default     = "terraform-state"
  type        = string
  description = "S3 bucket name for Terraform state file"
}

variable "backend_state_key_oi" {
  default     = "terraform.tfstate"
  type        = string
  description = "Suffix for the Terraform state file"
}

variable "backend_state_dynamo_oi" {
  default     = "state-lock"
  type        = string
  description = "Dynamo Table for state lock"
}

# IAM ----------------------------------------------------------------------------------------------
variable "user_oi" {
    default     = "ami-830c94e3"
    type        = string
    description = "The AMI to use for the practice S3 bucket"
}
