resource "aws_s3_bucket" "state" {
  bucket = "terraform-state-local"
}

resource "aws_dynamodb_table" "lock" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
