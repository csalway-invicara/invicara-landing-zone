module "global" {
  source                       = "./global"
  default_region               = var.default_region
  securityhub_admin_account_id = var.securityhub_admin_account_id
  cloudtrail_logs_bucket_name  = var.cloudtrail_logs_bucket_name
}

## DEFAULT REGIONS (DO NOT DELETE)

module "region_ap_northeast_1" {
  source                     = "./region"
  region                     = "ap-northeast-1"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_ap_northeast_2" {
  source                     = "./region"
  region                     = "ap-northeast-2"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_ap_northeast_3" {
  source                     = "./region"
  region                     = "ap-northeast-3"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_ap_south_1" {
  source                     = "./region"
  region                     = "ap-south-1"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_ap_southeast_1" {
  source                     = "./region"
  region                     = "ap-southeast-1"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_ap_southeast_2" {
  source                     = "./region"
  region                     = "ap-southeast-2"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_ca_central_1" {
  source                     = "./region"
  region                     = "ca-central-1"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_eu_central_1" {
  source                     = "./region"
  region                     = "eu-central-1"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_eu_north_1" {
  source                     = "./region"
  region                     = "eu-north-1"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_eu_west_1" {
  source                     = "./region"
  region                     = "eu-west-1"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_eu_west_2" {
  source                     = "./region"
  region                     = "eu-west-2"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_eu_west_3" {
  source                     = "./region"
  region                     = "eu-west-3"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_sa_east_1" {
  source                     = "./region"
  region                     = "sa-east-1"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_us_east_1" {
  source                     = "./region"
  region                     = "us-east-1"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_us_east_2" {
  source                     = "./region"
  region                     = "us-east-2"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_us_west_1" {
  source                     = "./region"
  region                     = "us-west-1"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
module "region_us_west_2" {
  source                     = "./region"
  region                     = "us-west-2"
  config_logs_bucket_name    = var.config_logs_bucket_name
  guardduty_admin_account_id = var.guardduty_admin_account_id
}
