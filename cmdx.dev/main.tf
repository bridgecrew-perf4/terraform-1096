provider "aws" {
  profile                  = var.aws_profile
  shared_credentials_files = var.aws_credentials
  shared_config_files      = var.aws_configs
}