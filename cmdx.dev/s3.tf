resource "aws_s3_bucket" "website" {
  bucket = var.s3_bucket_name
}
