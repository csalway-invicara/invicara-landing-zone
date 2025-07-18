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
  source = "./organization/accounts/log-archive"

  default_region            = var.default_region
  account_id                = aws_organizations_account.log_archive.id
  assume_role               = var.organization_account_access_role
  security_audit_account_id = aws_organizations_account.security_audit.id
}

# resource "aws_account_region" "log_archive_me_central_1" {
#   account_id  = aws_organizations_account.log_archive.id
#   region_name = "me-central-1"
#   enabled     = true
# }

module "account_log_archive_me_central_1" {
  source = "./organization/accounts/log-archive/region"

  region                  = "me-central-1"
  account_id              = aws_organizations_account.log_archive.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}
