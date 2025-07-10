module "account_management" {
  source = "./accounts/management"

  default_region              = var.default_region
  cloudtrail_logs_bucket_name = module.account_log_archive.cloudtrail_logs_bucket_name
}

module "account_log_archive" {
  source = "./accounts/828512280012"

  account_id     = aws_organizations_account.log_archive.id
  assume_role    = var.organization_account_access_role
  default_region = var.default_region
}

module "account_security_audit" {
  source = "./accounts/476569303854"

  account_id     = aws_organizations_account.security_audit.id
  assume_role    = var.organization_account_access_role
  default_region = var.default_region

  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}
