module "cloudtrail" {
  source = "./cloudtrail"

  default_region = var.default_region
  bucket_name    = var.cloudtrail_trail_bucket_name
}
