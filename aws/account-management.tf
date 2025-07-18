resource "aws_organizations_account" "management" {
  name      = "invicara-main"
  email     = "devops@invicara.com"
  parent_id = aws_organizations_organization.this.roots[0].id
  lifecycle {
    prevent_destroy = true
  }
}

module "account_management" {
  source = "./organization/accounts/management"

  default_region               = var.default_region
  cloudtrail_logs_bucket_name  = module.account_log_archive.cloudtrail_logs_bucket_name
  config_logs_bucket_name      = module.account_log_archive.config_logs_bucket_name
  securityhub_admin_account_id = aws_organizations_account.security_audit.id
  guardduty_admin_account_id   = aws_organizations_account.security_audit.id
}

# resource "aws_account_region" "management_me_central_1" {
#   account_id  = aws_organizations_account.management.id
#   region_name = "me-central-1"
#   enabled     = true
# }

module "account_management_me_central_1" {
  source = "./organization/accounts/management/region"

  region                     = "me-central-1"
  config_logs_bucket_name    = module.account_log_archive.config_logs_bucket_name
  guardduty_admin_account_id = aws_organizations_account.security_audit.id
}
