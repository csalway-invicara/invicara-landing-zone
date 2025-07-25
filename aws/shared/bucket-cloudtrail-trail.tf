module "bucket_cloudtrail_trail" {
  source = "./bucket-cloudtrail-trail"
  providers = {
    aws = aws.logs-default-region
  }
}
