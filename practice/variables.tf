# Credentials
variable "aws_profile" {
  description = "Profile name set up in AWS"
  type        = string
  default     = null
}
variable "aws_credentials_files" {
  description = "AWS credentials file for the above profile"
  type        = list(string)
  default     = null
}
variable "aws_config_files" {
  description = "AWS cofiguration file for the above profile"
  type        = list(string)
  default     = null
}

# S3
variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = null
  # Prevents value from display during plan/apply
  sensitive = true
}
variable "s3_bucket_acl" {
  description = "The ACL for the S3 bucket"
  type        = string
  default     = null
}

# EC2
variable "ec2_ami" {
  description = "EC2 Amazon Machine Images (AMI) ID"
  type        = string
  default     = null

  validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("^ami-", var.ec2_ami))
    error_message = "The \"ec2_ami\" value must be a valid AMI ID, starting with \"ami-\"."
  }
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = null
}

variable "ec2_tag_name" {
  description = "EC2 tag name"
  type        = string
  default     = null
}
