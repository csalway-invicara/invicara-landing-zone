module "cloudtrail_trail_bucket" {
  source = "./cloudtrail-trail"

  region      = var.default_region
  account_id  = var.log_archive_account_id
  assume_role = var.assume_role
}

module "config_logs_buckets" {
  source = "./config-logs"

  account_id  = var.log_archive_account_id
  assume_role = var.assume_role
}

