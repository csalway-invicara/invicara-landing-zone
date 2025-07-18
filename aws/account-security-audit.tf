resource "aws_organizations_account" "security_audit" {
  name      = "Security Audit"
  email     = "security@invicara.com"
  parent_id = aws_organizations_organizational_unit.security.id
  role_name = var.organization_account_access_role
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      role_name
    ]
  }
}

module "account_security_audit_blueprint" {
  source = "./organization/blueprints/member"

  default_region          = var.default_region
  account_id              = aws_organizations_account.security_audit.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}
