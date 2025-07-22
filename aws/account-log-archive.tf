resource "aws_organizations_account" "log_archive" {
  name      = "Log Archive"
  email     = "security-log-archive@invicara.com"
  parent_id = aws_organizations_organizational_unit.security.id
  role_name = var.organization_account_access_role
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

module "account_log_archive" {
  source = "./organization/account/log-archive"

  default_region = var.default_region
  account_id     = aws_organizations_account.log_archive.id
  assume_role    = var.organization_account_access_role
}

module "account_log_archive_global" {
  source = "./blueprints/account/global"

  default_region = var.default_region
  account_id     = aws_organizations_account.log_archive.id
  assume_role    = var.organization_account_access_role
}

module "account_log_archive_default_regions" {
  source = "./blueprints/account/region/default-regions"

  account_id              = aws_organizations_account.log_archive.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}

module "account_log_archive_me_central_1" {
  source = "./blueprints/account/region"

  region                  = "me-central-1"
  account_id              = aws_organizations_account.log_archive.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}
