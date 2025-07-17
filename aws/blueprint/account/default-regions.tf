module "default_regions" {
  source = "./default-regions"

  account_id              = var.account_id
  assume_role             = var.assume_role
  config_logs_bucket_name = var.config_logs_bucket_name
}