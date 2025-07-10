## Opt-in Regions


## Default Regions

module "config_log_default_regions" {
  source                  = "../../modules/aws/config/default_regions/accounts/member"
  account_id              = var.account_id
  assume_role             = var.assume_role
  config_logs_bucket_name = var.config_logs_bucket_name
}
