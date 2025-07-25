module "account_global" {
  source = "../../blueprints/account/global"

  default_region = var.default_region
  account_id     = var.account_id
  assume_role    = var.assume_role
  flags          = {}
}

module "account_default_regions" {
  source = "../../blueprints/account/region/default-regions"

  account_id               = var.account_id
  assume_role              = var.assume_role
  config_logs_bucket_names = var.config_logs_bucket_names
  flags_default_regions    = {}
}

module "account_me_central_1" {
  source = "../../blueprints/account/region"

  region                  = "me-central-1"
  account_id              = var.account_id
  assume_role             = var.assume_role
  config_logs_bucket_name = var.config_logs_bucket_names.me_central_1
  flags                   = {}
}
