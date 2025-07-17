module "cloudtrail" {
  source = "../modules/cloudtrail"
  providers = {
    aws = aws.root-default-region
  }
  cloudtrail_logs_bucket_name = var.cloudtrail_logs_bucket_name
}
