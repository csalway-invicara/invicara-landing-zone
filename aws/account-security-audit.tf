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

module "account_security_audit" {
  source = "./organization/account/security-audit"

  default_region = var.default_region
  account_id     = aws_organizations_account.security_audit.id
  assume_role    = var.organization_account_access_role

  organization_root_id = aws_organizations_organization.this.roots[0].id

  # The management account must be applied before security-audit as it
  # delegates admin for certain services to the security audit account.
  # However, as this module creates an aws provider, it is incompatible 
  # with count, for_each, and depends_on. Therefore we utilize terraforms 
  # tree functionality to process management first by requesting an output.
  management_completed = module.account_management.is_ready
}

module "account_security_audit_global" {
  source = "./blueprints/account/global"

  default_region = var.default_region
  account_id     = aws_organizations_account.security_audit.id
  assume_role    = var.organization_account_access_role
}

module "account_security_audit_default_regions" {
  source = "./blueprints/account/region/default-regions"

  account_id              = aws_organizations_account.security_audit.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}

module "account_security_audit_me_central_1" {
  source = "./blueprints/account/region"

  region                  = "me-central-1"
  account_id              = aws_organizations_account.security_audit.id
  assume_role             = var.organization_account_access_role
  config_logs_bucket_name = module.account_log_archive.config_logs_bucket_name
}
