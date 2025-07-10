module "securityhub_organization" {
  source = "./modules/aws/securityhub"

  default_region       = var.default_region
  admin_account_id     = aws_organizations_account.security_audit.id
  admin_assume_role    = var.organization_account_access_role
  organization_root_id = aws_organizations_organization.this.roots[0].id
}
