# [S3.1] S3 general purpose buckets should have block public access settings enabled

resource "aws_s3_account_public_access_block" "this" {
  restrict_public_buckets = var.flags.s3_account_public_access_block
  block_public_policy     = var.flags.s3_account_public_access_block
  block_public_acls       = var.flags.s3_account_public_access_block
  ignore_public_acls      = var.flags.s3_account_public_access_block
}
