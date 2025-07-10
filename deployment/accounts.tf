module "account_management" {
  source = "./accounts/management"

  default_region              = var.default_region
  cloudtrail_logs_bucket_name = module.account_log_archive.cloudtrail_logs_bucket_name
  config_logs_bucket_name     = module.account_log_archive.config_logs_bucket_name
}

module "account_log_archive" {
  source = "./accounts/828512280012"

  default_region = var.default_region
  account_id     = aws_organizations_account.log_archive.id
  assume_role    = var.organization_account_access_role
}

module "account_security_audit" {
  source = "./accounts/476569303854"

  default_region          = var.default_region
  account_id              = aws_organizations_account.security_audit.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}

module "account_networking" {
  source = "./accounts/942010117991"

  default_region          = var.default_region
  account_id              = aws_organizations_account.networking.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}

module "account_invicara_us" {
  source = "./accounts/550983980260"

  default_region          = var.default_region
  account_id              = aws_organizations_account.invicara_us.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}

module "account_invicara_sandbox" {
  source = "./accounts/970333330357"

  default_region          = var.default_region
  account_id              = aws_organizations_account.invicara_us.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}

module "account_invicara_ireland" {
  source = "./accounts/366349374946"

  default_region          = var.default_region
  account_id              = aws_organizations_account.invicara_us.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}
