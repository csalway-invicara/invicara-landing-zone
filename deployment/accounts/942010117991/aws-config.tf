## Opt-in Regions

module "config_log_me-central-1" {
  source                  = "../../modules/aws/config"
  providers               = { aws = aws.me-central-1 }
  config_logs_bucket_name = var.config_logs_bucket_name
}

## Default Regions

module "config_log_default_regions" {
  source                  = "../../modules/aws/config/default-regions/accounts/member"
  account_id              = var.account_id
  assume_role             = var.assume_role
  config_logs_bucket_name = var.config_logs_bucket_name
}
