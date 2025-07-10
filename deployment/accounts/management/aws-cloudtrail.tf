module "cloudtrail" {
  source = "../../modules/aws/cloudtrail"

  cloudtrail_logs_bucket_name = var.cloudtrail_logs_bucket_name
}
