# Bucket na região us-east
resource "aws_s3_bucket" "east" {
  provider = aws.us-east
  bucket   = "bucket-east"
}

# Bucket na região us-west
resource "aws_s3_bucket" "west" {
  provider = aws.us-west
  bucket   = "bucket-west"
}
