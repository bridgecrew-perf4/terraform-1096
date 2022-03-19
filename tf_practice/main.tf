provider "aws" {
  profile = "terraform"
  region  = "us-west-2"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "pymkdb-sandbox"
  acl    = "private"
}