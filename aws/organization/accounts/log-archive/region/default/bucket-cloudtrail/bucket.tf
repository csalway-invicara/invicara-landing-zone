resource "aws_s3_bucket" "this" {
  bucket        = "aws-cloudtrail-logs-${data.aws_region.current.region}-${data.aws_caller_identity.current.account_id}"
  force_destroy = false
}
