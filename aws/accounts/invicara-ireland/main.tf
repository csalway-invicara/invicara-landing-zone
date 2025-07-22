module "account_global" {
  source = "../../blueprints/account/global"

  default_region = var.default_region
  account_id     = var.account_id
  assume_role    = var.assume_role
  flags = {
    s3_account_public_access_block = false
  }
}

module "account_default_regions" {
  source = "../../blueprints/account/region/default-regions"

  account_id               = var.account_id
  assume_role              = var.assume_role
  config_logs_bucket_names = var.config_logs_bucket_names
  flags_default_regions = {
    ec2_instance_metadata_require_v2 = false
  }
}
