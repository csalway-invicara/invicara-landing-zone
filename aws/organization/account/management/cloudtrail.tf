module "cloudtrail" {
  source = "./services/cloudtrail"

  cloudtrail_trail_bucket_name = var.cloudtrail_trail_bucket_name
}
