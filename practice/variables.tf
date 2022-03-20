# Credentials
variable "aws_profile" {
  default = null
}
variable "aws_credentials_files" {
  default = null
}
variable "aws_config_files" {
  default = null
}

# S3
variable "s3_bucket_name" {
  description = "The name of the S3 bucket."
  default     = null
}
variable "s3_bucket_acl" {
  description = "The ACL for the S3 bucket."
  default     = null
}

# EC2
variable "ec2_ami" {
  description = "EC2 Amazon Machine Images (AMI) ID"
  default     = null
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  default     = null
}

variable "ec2_tag_name" {
  description = "EC2 tag name"
  default     = null
}
