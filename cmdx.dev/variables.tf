variable "aws_profile" {
  description = "Profile name in AWS"
  type        = string
  default     = null
}

variable "aws_credentials" {
  description = "AWS credential file"
  type        = list(any)
  default     = null
}

variable "aws_configs" {
  description = "AWS configuration file"
  type        = list(any)
  default     = null
}

variable "site_name" {
  description = "The domain name for the website"
  type        = string
  default     = null
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket for hosting the static site"
  type        = string
  default     = null
}
