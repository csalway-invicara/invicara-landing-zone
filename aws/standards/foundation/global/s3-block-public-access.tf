# [S3.1] S3 general purpose buckets should have block public access settings enabled

resource "aws_s3_account_public_access_block" "this" {
  restrict_public_buckets = true
  block_public_policy     = true
  block_public_acls       = true
  ignore_public_acls      = true
}
