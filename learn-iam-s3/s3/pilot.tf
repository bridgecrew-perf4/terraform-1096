# Create security policy document for the bucket
data "aws_iam_policy_document" "bucket_policy" {
    statement {
        effect = "Allow"
        actions = ["s3:*"]
        resources = [
            "arn:aws:s3:::<>",
            "arn:aws:s3:::<>/*"
        ]
        principals {
          type = "AWS"
          identifiers = [
              "arn:aws:iam::####:role/admin",
              data.terraform_remote_state.iam.outputs.admin-arn
          ]
        }
    }
}

# Create S3 bucket
resource "aws_s3_bucket" "pilot" {
    bucket = "pymkdb-pilot"
    policy = data.aws_iam_policy_document.bucket_policy.json
    lifecycle {
      prevent_destroy = false
    }
    versioning {
      enabled = true
    }
    server_side_encryption_configuration {
      rule {
          applly_server_side_encryption_by_default {
              sse_algorithm = "AES256"
          }
      }
    }
}

output "pilot_bucket_arn" {
    value = aws_s3_bucket.pilot.arn
}