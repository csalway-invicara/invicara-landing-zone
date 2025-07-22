module "account_global" {
  source = "./global"

  default_region = var.default_region
  flags          = {}
}

module "account_default_regions" {
  source = "./region/default-regions"

  config_logs_bucket_names = var.config_logs_bucket_names
}

module "account_me_central_1" {
  source = "./region"

  region                  = "me-central-1"
  config_logs_bucket_name = var.config_logs_bucket_names.me_central_1
}
