# The bucket where Terraform state file will be stored
resource "aws_s3_bucket" "tf_state_bucket" {
    bucket = "pymkdb-state"

    versioning {
        enabled = true
    }

    lifecycle {
      prevent_destroy = false
    }

    server_side_encryption_configuration {
      rule {
          apply_server_encryption_by_default {
              sse_algorithm = "AES256"
          }
      }
    }
}

resource "aws_dynamodb_table" "tf_state_lock" {
  name = "tf_state_lock"
  hash_key = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}
