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
