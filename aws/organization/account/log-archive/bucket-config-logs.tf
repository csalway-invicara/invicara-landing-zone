module "config_logs_bucket_default_region" {
  source = "./buckets/config"

  region      = var.default_region
  account_id  = var.account_id
  assume_role = var.assume_role
}
