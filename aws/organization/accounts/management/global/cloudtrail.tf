module "cloudtrail" {
  source = "./cloudtrail"

  cloudtrail_logs_bucket_name = var.cloudtrail_logs_bucket_name
}
